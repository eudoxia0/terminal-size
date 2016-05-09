(defsystem terminal-size
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :maintainer "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")
  :depends-on (:osicat
               :cffi)
  :components ((:module "src"
                :serial t
                :components
                ((:file "terminal-size"))))
  :description "Get the size of the terminal."
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op terminal-size-test))))
