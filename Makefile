.PHONY: list

all:

build-all: build-app build-assets build-widgetbook
# flutter helper
build-app:
	cd app && \
	dart run build_runner build && \
	dart run slang                        
	

build-assets:
	cd assets && \
	dart run build_runner build

build-widgetbook:
	dart run index_generator
	
	cd widgetbook && \
	dart run build_runner build

upload-widgetbook:
	cd widgetbook && \
	flutter build web && \
	widgetbook cloud build push --api-key 


# Environments
ENVIRONMENTS := local dev prod

# Function to generate build commands
define GENERATE_BUILD_COMMANDS
apk-$(1):
	cd app && \
	flutter build apk --dart-define-from-file lib/env/.$(1).env

apk-$(1)-debug:
	cd app && \
	flutter build apk --dart-define-from-file lib/env/.$(1).env --debug

appbundle-$(1):
	cd app && \
	flutter build appbundle --dart-define-from-file lib/env/.$(1).env

#  check this in production
ipa-$(1):
	flutter build ipa --dart-define-from-file lib/env/.$(1).env
endef

# Loop over environments and generate commands for each like apk-local, apk-dev, apk-prod, etc.
$(foreach env,$(ENVIRONMENTS),$(eval $(call GENERATE_BUILD_COMMANDS,$(env))))

# List all command
list:
	@echo "Available commands:"
	@echo "  - build-all"
	@echo "  - build-app"
	@echo "  - build-assets"
	@echo "  - build-widgetbook"
	@echo "  - upload-widgetbook"
	@echo "  - apk-local"
	@echo "  - apk-dev"
	@echo "  - apk-prod"
	@echo "  - apk-local-debug"
	@echo "  - apk-dev-debug"
	@echo "  - apk-prod-debug"
	@echo "  - appbundle-local"
	@echo "  - appbundle-dev"
	@echo "  - appbundle-prod"
	@echo "  - ipa-local"
	@echo "  - ipa-dev"
	@echo "  - ipa-prod"
	@echo "  - list"
	@echo "  - help"
	@echo ""
	@echo "To run a command, use: make <command>"
	@echo "For example: make apk-local"