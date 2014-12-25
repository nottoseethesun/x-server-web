install:
	lein deps

build:
	lein cljsbuild once

build-auto:
	lein cljsbuild auto

run:
	open resources/public/index.html

clean:
	lein clean
	rm -rf build
	mkdir build

PHONY: install build build-auto run clean
