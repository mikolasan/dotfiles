(require 'package) 
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		                        (not (gnutls-available-p))))
              (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
    (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
      (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(global-set-key [f8] 'neotree-toggle)

(when window-system (set-frame-size (selected-frame) 110 66))
(setq inhibit-startup-screen t)

;stroustrup
;;;; Use spaces
(setq-default indent-tabs-mode nil)
(setq c-default-style "stroustrup"
          c-basic-offset 4)

;;;; Suppress c++ namespace indentation
(defconst my-cc-style
    '("stroustrup" ; this is inheritance from the linux style
        (c-hanging-braces-alist . ((substatement-open before after)))
        (c-offsets-alist . ((innamespace . [0])
                            (topmost-intro . 0)
                            (block-open . 0)
                            (inline-open . 0)
                            (substatement-open . 0)))))
(c-add-style "my-cc-mode" my-cc-style)
(setq c-default-style "my-cc-mode")

