setproxy(){
	export http_proxy=localhost:3128
	export https_proxy=$http_proxy
	export ftp_proxy=$http_proxy
}

noproxy(){
	unset http_proxy
	unset https_proxy
}

# added by Anaconda 2.3.0 installer
export PATH="/Users/CMCCALL88/anaconda/bin:$PATH"
export PYTHONPATH="/Users/CMCCALL88/caffe/python/:$HOME/anaconda/bin:$HOME/anaconda/lib/"

##
# Your previous /Users/CMCCALL88/.bash_profile file was backed up as /Users/CMCCALL88/.bash_profile.macports-saved_2015-09-22_at_11:32:41
##

# MacPorts Installer addition on 2015-09-22_at_11:32:41: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

CUDA_ROOT=/usr/local/cuda
export LIBRARY_PATH=$CUDA_ROOT/lib:$CUDA_ROOT/lib64:$LIBRARY_PATH

export PATH="/usr/local/cuda:/usr/local/cuda/bin:/usr/local/cuda/lib:$PATH"
export DYLD_LIBRARY_PATH="/usr/local/cuda/bin:/usr/local/cuda/lib:/Developer/NVIDIA/CUDA-7.5/lib"
#:/usr/local/lib

# export DYLD_LIBRARY_PATH="/usr/local/cuda/lib:/usr/local/lib:/opt/local/lib:$DYLD_LIBRARY_PATH"

# export LD_LIBRARY_PATH="/usr/local/bin:/usr/local/cuda/lib:$LD_LIBRARY_PATH"

# export DYLD_FALLBACK_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$PATH:$PYTHONPATH"

# export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/:/Users/CMCCALL88/anaconda/pkgs/:$PKG_CONFIG_PATH"

alias gitgraph="git log --graph --full-history --all --color --pretty=format:'%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s - %an %ar'"

if [ -f $(brew --prefix)/etc/bash_completion  ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source ~/git_prompt.sh

proml

export CHEATCOLORS=true
export PATH="/usr/local/sbin:$PATH"
