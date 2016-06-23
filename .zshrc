# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="random"

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
plugins=(git)

# User configuration
#set HISTSIZE=-1
#set HISTFILESIZE=-1

export PATH="/usr/local/cuda:/usr/local/cuda/bin:/usr/local/cuda/lib:/opt/local/bin:/opt/local/sbin:/Users/$USER/anaconda/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
# source ~/dotfiles/history.sh
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
alias gitgraph="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s - %an %ar'"

alias notebook="cd ~ && jupyter notebook > /dev/null 2>&1 & popd"
alias pipin="pip install --index-url=http://pypi.python.org/simple/ --trusted-host pypi.python.org"

alias pipin3="pip3 install --index-url=http://pypi.python.org/simple/ --trusted-host pypi.python.org"

if [ -f "$(which cntlm)" ]
then
    setproxy(){
        export http_proxy=localhost:3128
        export https_proxy=$http_proxy
        export ftp_proxy=$http_proxy
        sed -ie 's/#ProxyCommand socat/ProxyCommand socat/g' ~/.ssh/config
        }
    noproxy(){
        unset http_proxy
        unset https_proxy
        sed -ie 's/ProxyCommand socat/#ProxyCommand socat/g' ~/.ssh/config
        }
fi

if [ -f "$(which conda)" ]
then
    # added by Anaconda 2.3.0 installer
    export PATH="/Users/$USER/anaconda/bin:$PATH"
    export PYTHONPATH="/Users/$USER/caffe/python/:$HOME/anaconda/bin:$HOME/anaconda/lib/"
fi

##
# Your previous /Users/$USER/.bash_profile file was backed up as /Users/$USER/.bash_profile.macports-saved_2015-09-22_at_11:32:41
##

# MacPorts Installer addition on 2015-09-22_at_11:32:41: adding an appropriate PATH variable for use with MacPorts.
# export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
if [ -d "/usr/local/cuda" ]
then
        export CUDA_ROOT="/usr/local/cuda"
        export CUDA_HOME="/usr/local/cuda"
        export LIBRARY_PATH="$CUDA_ROOT/lib:$CUDA_ROOT/lib64:$LIBRARY_PATH"
        export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
        export PATH="/usr/local/cuda:/usr/local/cuda/bin:/usr/local/cuda/lib:$PATH"
        export DYLD_LIBRARY_PATH="/usr/local/cuda/bin:/usr/local/cuda/lib:/Developer/NVIDIA/CUDA-7.5/lib"
        #:/usr/local/lib
fi

# export DYLD_LIBRARY_PATH="/usr/local/cuda/lib:/usr/local/lib:/opt/local/lib:$DYLD_LIBRARY_PATH"

# export LD_LIBRARY_PATH="/usr/local/bin:/usr/local/cuda/lib:$LD_LIBRARY_PATH"

# export DYLD_FALLBACK_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$PATH:$PYTHONPATH"

# export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/:/Users/$USER/anaconda/pkgs/:$PKG_CONFIG_PATH"

# alias ohmyzsh="mate ~/.oh-my-zsh"
# source ~/git_prompt.sh

# proml

export CHEATCOLORS=true
export PATH="/usr/local/sbin:$PATH"

bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=1
alias sudo='sudo '
