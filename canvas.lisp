(in-package :calm)

(ql:quickload :lem-sdl2)

;; override CALM entry point
;; caution: this is not a public API of CALM
(defun calm-init () (lem:lem))
