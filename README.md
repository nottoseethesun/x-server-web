# Introduction to `x-server-web`


## What

`x-server-web` aims to be an X Window System server that runs on the web browser with no plug-ins or extensions, using websockets spawned from http, regular javascript, html, and css.  This project is currently in an outline state only.


## Getting Started

Follow the Install, Build, and Run steps below, in that order.
Optionally, check the JavaScript console for output.


## Install

### Pre-requisites

1. Java 8 SE ("Standard Edition"), [available from Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index.html).  It is suggested to install Java 8 in the standard place for your system, such as on Mac, in `/Library/Java/JavaVirtualMachines`.
1. Check that your `$JAVA_HOME` environment variable points to your new Java 8 installation, and if not, set it so that it does.  On Mac, if you put Java 8 in the location suggested, it will do so automatically on system restart (meantime, you can set JAVA_HOME manually, if desired).  For example:
```
$ echo $JAVA_HOME
/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
```
1. `lein`, from [Leiningen.org](http://leiningen.org/#install).  Follow the instructions at that link if you don't have `lein`.
1. `lein` is on your system path.  For example:
```
$ lein --version
Leiningen 2.5.0 on Java 1.8.0_25 Java HotSpot(TM) 64-Bit Server VM
```
1. Ensure that [`make`](http://www.gnu.org/software/make/) is available on your system and is in your system path.
1. Optional (for `make run`): Ensure that `open` (as it works on Mac OS X for example) or `xdg-open` is available on your system.
1. `make install`


## Build

`make build`


## Run

Either `make run`, or open the following url in your browser: `resources/public/index.html`.


## Why

With good performance in terms of responsiveness, frames per second, and graphical fidelity in remote windowing (remote desktop, remote application windows) on the web browser, similar to that seen today in online (over the public Internet), high-spec gaming, users could conveniently access a new universe of remote resources, such as entire desktops, mobile-device user interfaces, and applications.

Offering this on the web browser enables users to conveniently experience the power of using a single, full-stack operating system across multiple, independent pieces of hardware (desktop, phone, tablet, car dash computer, etc).  Ultimately, with the geographical spread of network connectivity, there is less reason to use a different instance of a full-stack operating system for each specific piece of hardware, and more reason to instead use a single cloud-based one. 


## How

This X server aims for compliance with NeatX or similar X Windows clients that have been optimized for higher network latency such as found on the public Internet.  More detail will be announced later.

This X server is written in clojurescript.  For execution, it is compiled to javascript and delivered to a web browser with accompanying html and css.


### Choice of Clojurescript

Clojurescript has been chosen for this project because:

* It supports performant functional-programming on the web client (requiring only regular javascript).
* Although not natively strongly typed, it offers a generation-scale upgrade from javascript in terms of power, regularity, and consistency.
* It is likely to be widely adopted:
    * Much Clojure code can be run simply as clojurescript, and vice-versa, and since Clojure runs on the JVM, it is likely to be widely adopted among similar languages because software compatibility, security, and hardware portability issues are known factors and considered acceptable.
    * It supports isomorphic web applications: Since much clojurescript code can be run as Clojure, modules can be run on either the web client or the web server.  This enables server-side rendering of web apps that can also update themselves locally on the web browser client, without re-writing code.  Web-server-side rendering is performant because on first visit to a web page, such as a web page with today's world news content, delivery to the reader is faster if the initial page render is done on the web server.


# Caveats

* X Server extensions needed: To be performant and comparable to current X server/X client set-ups, `x-server-web` would need compatible (meaning, implemented in something that compiles to javascript) implementations of the extensions "Composite", "GLX", "RENDER", "RANDR", "SECURITY", "SYNC", "XVideo".
* A compatible display manager (for graphical authentication) will be needed for secure access.


# Other Approaches Considered

* SPICE, with its html5 client, represents the closest thing to this project but it runs on top of the X system, adding an additional layer of overhead and complexity.  This enables it to work with the Windows operating system as well as with the X Windows System.  For better performance however, and also for simplicity, less software layers are desirable.  Hence, simply using a display server that is native to X will provide a better foundation in terms of performance and maintainability.
* The Wayland window system looks very promising, but this project requires a finished window system so that it can be completed on a more predictable and more economical (in terms of engineering effort) schedule.


# Roadmap

1. Develop basic X Server outline (support displays, screens, input, and so forth).
1. Implement the networking infrastructure (websockets) that will transport the X protocol messages.
1. Connect to a real X Client (may require developing new features).
1. Implement extensions as listed above.
1. Implement a display manager.


# References

* "[X Power Tools](http://shop.oreilly.com/product/9780596101954.do)", by O'Reilly Publishing
* "[The X New Developers Guide](http://www.x.org/wiki/guide/)", by X.org


# Contributing

If you are not already familiar with the basic architecture of X Windows, first read "[The X New Developer’s Guide](http://www.x.org/wiki/guide/)".

This project has files to facilitate editing from Cursive, the IntelliJ set-up for Clojure.

Code style: Everything standard, and especially, whitespace instead of tabs.

Send your clojurescript pull request, and if interested, request to be a committer.
