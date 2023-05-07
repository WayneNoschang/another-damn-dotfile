#    _     _      _     _      _     _        _     _      _     _      _     _      _     _      _     _      _     _      _     _   
#   (c).-.(c)    (c).-.(c)    (c).-.(c)      (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)  
#    / ._. \      / ._. \      / ._. \        / ._. \      / ._. \      / ._. \      / ._. \      / ._. \      / ._. \      / ._. \   
#  __\( Y )/__  __\( Y )/__  __\( Y )/__    __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__ 
# (_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)  (_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)
#    || Z ||      || S ||      || H ||        || A ||      || L ||      || I ||      || A ||      || S ||      || E ||      || S ||   
#  _.' `-' '._  _.' `-' '._  _.' `-' '._    _.' `-' '._  _.' `-' '._  _.' `-' '._  _.' `-' '._  _.' `-' '._  _.' `-' '._  _.' `-' '._ 
# (.-./`-'\.-.)(.-./`-`\.-.)(.-./`-'\.-.)  (.-./`-'\.-.)(.-./`-'\.-.)(.-./`-'\.-.)(.-./`-'\.-.)(.-./`-`\.-.)(.-./`-'\.-.)(.-./`-`\.-.)
#  `-'     `-'  `-'     `-'  `-'     `-'    `-'     `-'  `-'     `-'  `-'     `-'  `-'     `-'  `-'     `-'  `-'     `-'  `-'     `-' 

# ZSH aliasing: https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#Aliasing

# Quickly edit config files
alias zshconfig="lvim ~/.zshrc"
alias lvimconfig="lvim ~/.config/lvim/config.lua"

# Readable PATH and FPATH output
alias lpath='echo $PATH | tr ":" "\n"'
alias lfpath='echo $fpath | tr " " "\n"'

# List file and directories using exa: https://github.com/ogham/exa
alias ls="exa"
LS_IGNORE=".git*|.hushlogin|.DS_Store|.CFUserTextEncoding|.lesshst|.viminfo|.zcomp*|.zsh_*"
alias lsa="exa -1a --ignore-glob='$LS_IGNORE'"
alias ll="exa -Hhb --long --git --no-time"
alias llc="exa --long -h --time=created --sort=created"
alias lt="exa --tree"

# Alias to access homebrew neovim (not accessible because of nvim 8.0 on PATH )
alias brew-nvim="$(brew --prefix)/bin/nvim"

# Git aliases for long or complex commands
alias gitree="git ls-tree --full-tree --name-only -r HEAD"

