# win-helpers.el

A series of helper functions for Windows Emacs users.

**Still in development**

## Provided functions

| Function Name             | Description                                                                                           |
|---------------------------|-------------------------------------------------------------------------------------------------------|
| `winh-open-terminal-here` | Opens the windows terminal in the current directory. Takes an optional argument for the profile name. |
| `winh-open-explorer-here` | Opens the windows explorer in the current directory.                                                  |

## Binding examples

```lisp

;; Open Windows terminal in the current folder.
(define-key global-map (kbd "C-c t") 'winh-open-terminal-here)

;; Open Windows terminal, with the powershell profile, in the current folder.
(define-key global-map (kbd "C-c t")
  (lambda ()
    (interactive)
    ('winh-open-terminal-here "PowerShell")))

;; Open Windows explorer in the current folder.
(define-key global-map (kbd "C-c e") 'winh-open-explorer-here)
```
