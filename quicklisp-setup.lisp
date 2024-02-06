(quicklisp-quickstart:install :path "~/.quicklisp")
(ql:add-to-init-file)
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload '("clx"
                "cl-ppcre"
                "alexandria"
                "cl-fad"
                "anaphora"
                "drakma"
                "slynk"))
