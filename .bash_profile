alias ll='ls -la'
alias ls='ls --color=never'
export EDITOR=vim
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DO_NOT_TRACK=1
HISTTIMEFORMAT='%F %T '


alias gis='git status'
alias gia='git add .'
alias gic='git commit'
alias gil='git log --oneline --graph --decorate --all'
alias gim='git checkout master'
alias gico='git checkout'
alias gicob='git checkout -b'
alias gid='git diff'
alias gib='git branch'
alias giba='git branch -a'
alias gip='git pull'
alias gipu='git push'
alias gipp='git pull && git push'
alias gimm='git merge master'


# git config --global alias.diffname 'diff --name-status dev'
# git config --global help.autocorrect 5
# shopt -s histappend


# https://askubuntu.com/a/249175
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Default - without git branch
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\w\$ '

# No colour
# PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w \$(parse_git_branch)$ "

# Green
# PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w \[\033[01;32m\]\$(parse_git_branch)\[\033[00m\]$ "
