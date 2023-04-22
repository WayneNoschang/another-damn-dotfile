#   _____      _____  __  __ ______ __     __       ______ ____   _   __ ______ ____ ______ __  __ ____   ___   ______ ____ ____   _   __
#  /__  /     / ___/ / / / // ____// /    / /      / ____// __ \ / | / // ____//  _// ____// / / // __ \ /   | /_  __//  _// __ \ / | / /
#    / /      \__ \ / /_/ // __/  / /    / /      / /    / / / //  |/ // /_    / / / / __ / / / // /_/ // /| |  / /   / / / / / //  |/ / 
#   / /__    ___/ // __  // /___ / /___ / /___   / /___ / /_/ // /|  // __/  _/ / / /_/ // /_/ // _, _// ___ | / /  _/ / / /_/ // /|  /  
#  /____/   /____//_/ /_//_____//_____//_____/   \____/ \____//_/ |_//_/    /___/ \____/ \____//_/ |_|/_/  |_|/_/  /___/ \____//_/ |_/   

# ZSH config ideas, resources, tips and tricks: ~/.config/zsh/awesome-zsh.txt
# -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# User configuration

# Homebrew on arm64 and completions: https://docs.brew.sh/Shell-Completion
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Starship prompt: https://starship.rs/
eval "$(starship init zsh)"

# ZSH config dir
ZCONFIG="$HOME/.config/zsh"
export XDG_CONFIG_HOME="$HOME/.config" # config dir for all other apps

# Environment Variables
[[ -f $ZCONFIG/environment-variables.zsh ]] && source $ZCONFIG/environment-variables.zsh

# Completions
[[ -f $ZCONFIG/completion.zsh ]] && source $ZCONFIG/completion.zsh

# Aliases
[[ -f $ZCONFIG/aliases.zsh ]] && source $ZCONFIG/aliases.zsh

# Options
[[ -f $ZCONFIG/set-options.zsh ]] && source $ZCONFIG/set-options.zsh

# Color man pages
[[ -f $ZCONFIG/color-man-pages.zsh ]] && source $ZCONFIG/color-man-pages.zsh

# Node Version Manager
[[ -f $ZCONFIG/node-version-manager.zsh ]] && source $ZCONFIG/node-version-manager.zsh

# Ruby (latest version installed, rvm not used)
export PATH="$(brew --prefix)/opt/ruby/bin:$PATH"

# Activate zsh syntax highlighting (add the following at the end of .zshrc)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Lunarvim
export PATH="$HOME/.config/nvim-macos/bin:$PATH" # Path for neovim 0.8.0 (required for lvim)
export PATH="$HOME/.local/bin:$PATH" # Path for lunarvim
# -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Old Commands

# Setting PATH for Python 3.10 (The original version is saved in 1TB.pysave)
# export PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"

# New shell session info and reminders
# cat .reminders.txt
