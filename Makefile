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
