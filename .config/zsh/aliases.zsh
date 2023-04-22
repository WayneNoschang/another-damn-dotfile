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
alias la="COLUMNS=100 exa -a --sort=ext --group-directories-first --icons --ignore-glob='.DS_Store' --grid"
alias ll="exa -Hhb --long --grid --git --no-time"
alias lt="exa --tree"
alias llc="exa --long --grid -h --time=created --sort=created"

# Alias to access homebrew neovim (not accessible because of nvim 8.0 on PATH )
alias brew-nvim="$(brew --prefix)/bin/nvim"

