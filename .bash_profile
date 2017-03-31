# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#HB ssh
alias sshb="ssh-add ~/.ssh/agne-fellowship"

# Sublime
alias subl="open -a /Applications/Sublime\ Text\ 2.app"

# PyCharm
alias py="open -a /Applications/PyCharm.app"

# bpython
alias bp="cd ~/Documents/Code/bpython && venv && bpython"

# ENV
alias venv="source env/bin/activate"

# iPython
alias ip="cd ~/Documents/Code/ipython && venv && ipython"

# hide desktop icons (mac os x)
alias deskhide='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'

alias deskshow='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'

# Pluc
source "$(pluc-cli --destinationPath)"
function pluc() {
  pluc-cli "$@"
  source "$(pluc-cli --destinationPath)"
}

if [ -e /usr/local/bin/rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

EMOJI=(
☕️
🍄
🍕
🌱
🐱
🌙
✨
🌯
💕
🐰
👽
💎
🔮
🚀
💅🏻
🦄
🍺
🇩🇪
)

export PATH="/usr/local/bin:$PATH"
emoji="${EMOJI[$RANDOM % ${#EMOJI[@]}]}"
export PS1="\[\033[38;5;195m\]\u:\[$(tput sgr0)\] ${emoji}  \[\033[01;32m\]"

##
# Your previous /Users/agne/.bash_profile file was backed up as /Users/agne/.bash_profile.macports-saved_2016-09-22_at_12:42:09
##

# MacPorts Installer addition on 2016-09-22_at_12:42:09: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
