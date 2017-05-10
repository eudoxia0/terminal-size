(defsystem terminal-size
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :maintainer "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage "https://github.com/eudoxia0/terminal-size"
  :bug-tracker "https://github.com/eudoxia0/terminal-size/issues"
  :source-control (:git "https://github.com/eudoxia0/terminal-size.git")
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
