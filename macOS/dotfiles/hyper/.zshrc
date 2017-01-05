# Path to your oh-my-zsh installation.
export ZSH=/Users/jaredhamby/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="jamby"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting git)

# User configuration
export CLICOLOR=1
export TERM=xterm-256color

# WHY DO NONE OF THESE WORK AT ALL? WHAAAAAA
# add the /usr/local/bin directory to the front of the path so packages installed by homebrew are used before the base install packages installed in /usr/bin...
export PATH=$PATH:/usr/local/bin:/path/to/elixir/bin
# export MANPATH="/usr/local/man:$MANPATH"

function title {
    echo -ne "\033]0;"$*"\007"
}

alias memcache_up="memcached -d"
alias memcache_down="killall memcached"
alias be="bundle exec"
alias berc="bundle exec rails c"
alias bers="bundle exec rails s"
alias mps="mix phoenix.server"
alias imps="iex -S mix phoenix.server"
alias ll="ls -lGh $@"
alias ls="ls -GFh"
alias xcode="open -a Xcode"
alias cdp="cd ~/Projects"

alias iphone_6_sim='xcrun instruments -w "iPhone 6s (9.3) [A99649DA-6894-896A-5EAF26BCA29C]"'
alias ipad_retina_sim='xcrun instruments -w "iPad Retina (9.3 Simulator)"'

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# NVM
export NVM_DIR="/Users/jaredhamby/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# KIEX
export KIEX_DIR="/Users/jaredhamby/.kiex"
[[ -s "$KIEX_DIR/scripts/kiex" ]] && source "$KIEX_DIR/scripts/kiex"
