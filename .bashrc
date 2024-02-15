# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
} 

PS1='\[\033[1;35m\]\W\[\033[00m\]$(parse_git_branch)\$ '

alias tree='tree -h'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -f "/home/adam/.ghcup/env" ] && source "/home/adam/.ghcup/env" # ghcup-env
export SHELL=/usr/bin/bash
export JAVA_HOME=/home/adam/.jdks/azul-17.0.7
export PATH="$PATH:/opt/riscv/bin"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export LD_LIBRARY_PATH=$HOME/opt/lib:$LD_LIBRARY_PATH
