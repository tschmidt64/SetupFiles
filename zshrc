# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/lib:/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH

# added by Anaconda2 4.4.0 installer
export PATH="/Users/tschmidt/anaconda2/bin:$PATH"

# export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# export PATH=/Users/tschmidt/anaconda3/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/tschmidt/.oh-my-zsh


# Python Path for NaoQi
export PYTHONPATH=$HOME/pynaoqi-python2.7-2.1.4.13-mac64:$PYTHONPATH

DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:$HOME/pynaoqi-python2.7-2.1.4.13-mac64
alias naopy="/Applications/Aldebaran\ Robotics/Choregraphe\ Suite\ 2.1/Choregraphe.app/Contents/Resources/bin/python2"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# Vi mode
bindkey -v

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
plugins=(
    autojump
    brew
    colored-man-pages
    colorize
    conda
    fasd
    git
    history
    node
    npm
    pip
    sublime
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Have yourself a cowsay fortune
fortune -s | cowsay -f `ls -1 /usr/local/Cellar/cowsay/3.04/share/cows/ | rl | head -1`

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# General aliases
# alias vi=mvim
# alias vim=mvim
alias ls="ls -lhFG"

# Hadoop aliases
alias hstart="/usr/local/Cellar/hadoop/2.8.0/sbin/start-dfs.sh; /usr/local/Cellar/hadoop/2.8.0/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.8.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.8.0/sbin/stop-dfs.sh"

# fasd aliases
alias j='fasd_cd -d'     # cd, same functionality as j in autojump
alias jj='fasd_cd -d -i' # cd with interactive selection



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tschmidt/Desktop/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/tschmidt/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tschmidt/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/tschmidt/Desktop/google-cloud-sdk/completion.zsh.inc'; fi
