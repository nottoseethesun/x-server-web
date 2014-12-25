(defproject x-server-web "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [
                 [org.clojure/clojure "RELEASE"]          ;; "1.5.1"
                 [org.clojure/tools.logging "RELEASE"]    ;; "0.3.1"
                 [org.clojure/clojurescript "0.0-2511"]   ;; "RELEASE" not supported.
                 [shodan "RELEASE"]                       ;; https://github.com/noprompt/shodan
                 [cljs-websockets-async "0.1.0-SNAPSHOT"] ;; https://github.com/loganlinn/cljs-websockets-async ;; "RELEASE" not supported.
                 ]
  :source-paths ["src/clj"]
  ;; :main x-server-web.core/init-server
  :plugins [[lein-cljsbuild "RELEASE"]] ;; 1.0.3
  :cljsbuild {:builds
              [{:source-paths ["src/x_server_web/cljs"],
                :compiler
                {:optimizations :whitespace,
                 :output-to "build/resources/public/index.js",
                 :pretty-print true}}]}
  )
