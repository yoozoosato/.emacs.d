; an alternative to auto-complete mode
(require 'corfu)

(setq corfu-auto t)
(setq corfu-auto-prefix 2)
(setq corfu-cycle t)
(setq corfu-count 20)

(global-corfu-mode)
