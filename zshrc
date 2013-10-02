# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile_zsh
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pho/.zshrc'

autoload -U colors && colors
autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select
setopt completealiases
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward

alias install='sudo clyde -S'
alias l='ls -lha --color=auto'
alias lsorphans='sudo pacmatic -Qdt'
alias p='sudo pacman'
alias c='sudo clyde'
alias b='sudo bauerbill'
alias pp='sudo pacmatic'
alias y='yaourt'
alias reboot='s reboot'
alias halt='s halt'
alias rmapp='sudo pacmatic -Rsn'
alias rmorphans='sudo pacmatic -Rsnc $(pacman -Qtdq)'
alias s=sudo
alias screen='screen -RUaD'
alias which-command=whence
alias zshrc='/usr/bin/vim ~/.zshrc; source ~/.zshrc'
alias vi='/usr/bin/vim'
alias svim='sudo /usr/bin/vim'

source /usr/share/git/completion/git-prompt.sh
