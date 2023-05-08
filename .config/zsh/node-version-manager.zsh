# .------..------..------..------.     .------..------..------..------..------..------..------.     .------..------..------..------..------..------..------.
# |N.--. ||O.--. ||D.--. ||E.--. |.-.  |V.--. ||E.--. ||R.--. ||S.--. ||I.--. ||O.--. ||N.--. |.-.  |M.--. ||A.--. ||N.--. ||A.--. ||G.--. ||E.--. ||R.--. |
# | :(): || :/\: || :/\: || (\/) ((5)) | :(): || (\/) || :(): || :/\: || (\/) || :/\: || :(): ((5)) | (\/) || (\/) || :(): || (\/) || :/\: || (\/) || :(): |
# | ()() || :\/: || (__) || :\/: |'-.-.| ()() || :\/: || ()() || :\/: || :\/: || :\/: || ()() |'-.-.| :\/: || :\/: || ()() || :\/: || :\/: || :\/: || ()() |
# | '--'N|| '--'O|| '--'D|| '--'E| ((1)) '--'V|| '--'E|| '--'R|| '--'S|| '--'I|| '--'O|| '--'N| ((1)) '--'M|| '--'A|| '--'N|| '--'A|| '--'G|| '--'E|| '--'R|
# `------'`------'`------'`------'  '-'`------'`------'`------'`------'`------'`------'`------'  '-'`------'`------'`------'`------'`------'`------'`------'

# Node version manager: https://github.com/nvm-sh/nvm

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Call nvm use automatically whenever you enter a directory that contains an .nvmrc file
# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

