# ███████╗    ███████╗██╗  ██╗███████╗██╗     ██╗          ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ ██╗   ██╗██████╗  █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
# ╚══███╔╝    ██╔════╝██║  ██║██╔════╝██║     ██║         ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ ██║   ██║██╔══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
#   ███╔╝     ███████╗███████║█████╗  ██║     ██║         ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗██║   ██║██████╔╝███████║   ██║   ██║██║   ██║██╔██╗ ██║
#  ███╔╝      ╚════██║██╔══██║██╔══╝  ██║     ██║         ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║██║   ██║██╔══██╗██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
# ███████╗    ███████║██║  ██║███████╗███████╗███████╗    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝╚██████╔╝██║  ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
# ╚══════╝    ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

# ZSH config notes and reminders: ~/.config/zsh/zsh-notes.md
# -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Homebrew on arm64 and completions: https://docs.brew.sh/Shell-Completion
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Starship prompt: https://starship.rs/
eval "$(starship init zsh)"

# ZSH config dir
ZCONFIG="$HOME/.config/zsh"

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

