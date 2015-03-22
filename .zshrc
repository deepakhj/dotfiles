# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# AWS
source /usr/local/share/zsh/site-functions/_aws

# JAVA
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# DOCKER
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/deepak/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="candy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git aws mvn)

source $ZSH/oh-my-zsh.sh

# User configuration

export MYSQL_HOME=/usr/local/Cellar/mysql55/5.5.30
export PATH="/usr/local/opt/go/libexec/bin:/usr/local/bin:/usr/local/sbin:$MYSQL_HOME/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

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
alias s='ssh'

# set java home aliases
alias setjdk17='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setjdk18='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

# skout aliases
alias skout_rest_start="MAVEN_OPTS='-Xms256m -Xmx6g -XX:MaxPermSize=512m -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5007' sh -c 'nohup mvn tomcat7:run -f ~/Documents/workspace/Yggdrasil/rest/pom.xml > /tmp/skout_rest.log &'"
alias skout_www_start="MAVEN_OPTS='-Xms256m -Xmx6g -XX:MaxPermSize=512m -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5006' sh -c 'nohup mvn tomcat7:run -f ~/Documents/workspace/Yggdrasil/webapp/pom.xml > /tmp/skout_www.log &'"
alias skout_start="skout_rest_start; skout_www_start"
alias skout_www_shutdown="pkill -f .*webapp/pom.xml"
alias skout_rest_shutdown="pkill -f .*rest/pom.xml"
alias skout_shutdown="skout_rest_shutdown; skout_www_shutdown"

alias rb=rbenv
alias be="bundle exec"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
