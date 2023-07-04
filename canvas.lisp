(in-package :calm)

(ql:quickload :swank)

(ql:quickload :lem-sdl2)

;; override CALM entry point
;; caution: this is not a public API of CALM
(defun calm-init ()
  (setf lem-sdl2/resource::*resource-directory* (uiop:merge-pathnames* "assets/" (uiop:getenv "CALM_APP_DIR")))
  (lem:lem))
