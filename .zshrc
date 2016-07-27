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

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
source ./aliases.sh
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

# export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/:/Users/$USER/anaconda/pkgs/:$PKG_CONFIG_PATH"

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
