(in-package :cl-user)
(defpackage terminal-size
  (:use :cl)
  (:export :size)
  (:documentation "Get the sie of the terminal."))
(in-package :terminal-size)

(defmacro winsize-slot (ptr name)
  `(cffi:foreign-slot-value ,ptr '(:struct osicat-posix:winsize) ',name))

(declaim (ftype (function () (cons fixnum fixnum))
                size))
(defun size ()
  "Return cons of the terminal size: the car is the column count, the cdr the
line count."
  (cffi:with-foreign-object (window-size '(:struct osicat-posix:winsize))
    (osicat-posix:ioctl 0 osicat-posix:tiocgwinsz window-size)
    (cons (winsize-slot window-size osicat-posix:col)
          (winsize-slot window-size osicat-posix:row))))
