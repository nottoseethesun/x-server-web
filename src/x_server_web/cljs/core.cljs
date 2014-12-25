(ns x-server-web.core
  (:require [shodan.console :as console :include-macros true]
            [shodan.inspection :refer [inspect]]
            )
  )

(enable-console-print!)


(defn create-server [ listen-port options ]
  {
   :listen-port listen-port
   :options options
   :displays {
              :display1 {:screens '({:id 0})} ;; Child windows and iframes could serve to create a multiple screen arrangement.
              }
   :clients    {}
   :extensions {}
   }
  )


(defn init-server []
  (inspect (create-server 8888 {})) ;; @to-do: Read these inputs from an external file.
  )

(init-server)
(console/info "Initialized the X Server for Web.")
