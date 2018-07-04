source ~/.bashrc

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/opt/td-agent/usr/sbin/
export PATH=$PATH:/opt/td-agent/usr/sbin/ # unfortunately, this is necessary to run td-agent (2018/07/02)

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

