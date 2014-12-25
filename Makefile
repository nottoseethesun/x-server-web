install:
	lein deps

build:
	lein cljsbuild once

build-auto:
	lein cljsbuild auto

run:
	bin/run.bash

clean:
	rm -rf build

uninstall:
	lein clean

PHONY: install build build-auto run clean uninstall
