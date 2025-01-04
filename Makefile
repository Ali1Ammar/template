.PHONY: build list

all:
# flutter helper
build-app:
	cd app && dart run build_runner build

build-assets:
	cd assets && flutter pub run build_runner build --delete-conflicting-outputs

build-widgetbook:
	dart run index_generator && cd widgetbook && dart run build_runner build

upload-widgetbook:
	cd widgetbook && flutter build web && widgetbook cloud build push --api-key 
