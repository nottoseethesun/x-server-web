PORT=6200        # X Servers typically run on port 6000, but for web browser use across firewalls (as would be the case
	             # if this were to move to production today), this would need to be changed to 80 or 8080.
                 # For development work, and to keep out of the way of other servers (X Window System and other servers),
                 # we choose a higher range than regular X servers.

install:
	npm i
	lein deps

build:
	lein cljsbuild once

build-auto:
	lein cljsbuild auto

serve:
	bin/serve.bash $(PORT)

run:
	bin/run.bash $(PORT)

clean:	
	rm -rf build node_modules

uninstall:
	lein clean

PHONY: install build build-auto run clean uninstall
