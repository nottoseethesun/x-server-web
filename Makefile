PORT=6200

install:
	npm i
	lein deps

build:
	lein cljsbuild once

build-auto:
	lein cljsbuild auto

run:
	bin/run.bash $(PORT)

clean:	
	rm -rf build node_modules

uninstall:
	lein clean

PHONY: install build build-auto run clean uninstall
