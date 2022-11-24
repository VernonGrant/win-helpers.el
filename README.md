# win-helpers.el

A series of helper functions for Windows Emacs users that are making use of WSL.
**Still in development**

## Provided functions

| Function Name                  | Description                                                                                                           |
|--------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| `wh-wsl-open-windows-terminal` | Opens the windows terminal from within WSL in the current directory. Takes an optional argument for the profile name. |
|                                |                                                                                                                       |

## Binding examples

```lisp

;; Open Windows terminal from within WSL in the current folder.
(define-key global-map (kbd "C-c t") 'wh-wsl-open-windows-terminal)

;; Open Windows terminal, with the powershell profile, from within WSL in the current folder.
(define-key global-map (kbd "C-c t")
  (lambda ()
    (interactive)
    (wh-wsl-open-windows-terminal "PowerShell")))
```
