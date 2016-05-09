(defsystem terminal-size-test
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :depends-on (:terminal-size
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "terminal-size")))))
