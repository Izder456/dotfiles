(quicklisp-quickstart:install :path "~/.quicklisp")
(ql:add-to-init-file)
(ql:quickload '("clx"
                "cl-ppcre"
                "alexandria"
                "cl-fad"
                "anaphora"
                "drakma"
                "slynk"))
