(load "../gsl.lisp")
(gsl-init :options +GSL-DEFAULT-VIDEO+)

(defun input ()
  (gsl-console-input)
  (when (gsl-get-key +SDLK-ESCAPE+) (gsl-quit)))

(defun draw ()
  (gl-clear +GL-COLOR-BUFFER-BIT+)
  (gsl-draw-console)
  (gl-swap-buffers))

(loop
  (input)
  (draw)
  (sdl-delay 50))
