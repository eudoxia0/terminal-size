(in-package :cl-user)
(defpackage terminal-size-test
  (:use :cl :fiveam)
  (:export :run-tests))
(in-package :terminal-size-test)

(def-suite tests
  :description "terminal-size tests.")
(in-suite tests)

(test simple-test
  (is
   (equal 1 1))
  (is-true
   (and t t)))

(defun run-tests ()
  (run! 'tests))
