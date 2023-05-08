#  ____  ____  ____  _________  ____  ____  ____  ____  ____  ____  ____  ____  ____  ____  _________  ____  ____  ____  ____  ____  ____ 
# ||Z ||||S ||||H ||||       ||||C ||||O ||||M ||||P ||||L ||||E ||||T ||||I ||||O ||||N ||||       ||||E ||||N ||||G ||||I ||||N ||||E ||
# ||__||||__||||__||||_______||||__||||__||||__||||__||||__||||__||||__||||__||||__||||__||||_______||||__||||__||||__||||__||||__||||__||
# |/__\||/__\||/__\||/_______\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||/__\||/_______\||/__\||/__\||/__\||/__\||/__\||/__\|

# Zsh-users guide: https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org
# ZSH documentation guide: https://www.csse.uwa.edu.au/programming/linux/zsh-doc/zsh_23.html

# Use zsh-completions by zsh-users: (https://github.com/zsh-users/zsh-completions)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
