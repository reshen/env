# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Colors
NC='\[\033[0m\]'    # unsets color to term's fg color

# regular colors
K='\[\033[0;30m\]'    # black
R='\[\033[0;31m\]'    # red
G="\[\033[0;32m\]"    # green
Y='\[\033[0;33m\]'    # yellow
B='\[\033[0;34m\]'    # blue
M='\[\033[0;35m\]'    # magenta
C='\[\033[0;36m\]'    # cyan
W='\[\033[0;37m\]'    # white

# emphasized (bolded) colors
EMK="\[\033[1;30m\]"
EMR="\[\033[1;31m\]"
EMG="\[\033[1;32m\]"
EMY="\[\033[1;33m\]"
EMB="\[\033[1;34m\]"
EMM="\[\033[1;35m\]"
EMC="\[\033[1;36m\]"
EMW="\[\033[1;37m\]"

# background colors
BGK="\[\033[40m\]"
BGR="\[\033[41m\]"
BGG="\[\033[42m\]"
BGY="\[\033[43m\]"
BGB="\[\033[44m\]"
BGM="\[\033[45m\]"
BGC="\[\033[46m\]"
BGW="\[\033[47m\]"

# Set the terminal to identify as a color terminal.  This allows colors to work properly in vim72
# on solaris 10 boxes: http://vim.wikia.com/wiki/Getting_colors_to_work_on_solaris
export TERM=xtermc

# Prompt

function serif_prompt
{
  History="$G\!$NC"
  UserMachine="$B\u@\h$NC"
  Path="$W\w$NC> "
  #ServerLoad='\[$Purple\]`uptime | sed -e "s/.*load averages+: \(.*\...\), \(.*\...\), \(.*\...\)/\1 \2 \3/"`\[$NC\]'
  ServerLoad="$M`uptime | sed -e "s/.*: \(.*\...\)/\1/"`$NC"
  DateTime="$NC\d \@$NC"
  Clearcase="$Y`echo $CLEARCASE_ROOT | sed -e "s/\/view\/\(.*\)/\1/"`$NC"

  if [ "$CLEARCASE_ROOT" != "" ]; then
      # Clearcase prompt
      PS1=\\n'['$History\ $UserMachine\ $ServerLoad\ $Clearcase']'\\n$Path
  else
      # Non-Clearcase prompt
      PS1=\\n'['$History\ $UserMachine\ $ServerLoad\ $DateTime']'\\n$Path
  fi

  PS2='> '
  PS4='+ '

  # Set the title of the terminal
  echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"
}

# Update the prompt on each command
export PROMPT_COMMAND="serif_prompt"

# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac

# Enable machine specific path aliases
UNAME=`uname`
if [ "$UNAME" = "Linux" ]; then
    echo "Linux setup..."
    # Update path
PATH=.\
:~/bin\
:/usr/local/bin\
:/usr/bin\
:/sbin\
:$PATH

elif [[ "$HOSTNAME" =~ "ratchet" ]]; then
    echo "Mac setup..."
    # Update path
PATH=\
:.\
:~/bin\
:/opt/local/bin\
:$PATH
else
    echo "SunOS setup..."
    # Update path
PATH=\
:.\
:~/bin\
:/proj/s_core/tools/vim72/bin\
:/home/p56545/active_tcl/bin\
:/proj/s_core/software/scripts\
:/proj/s_core/local/ghs/multi/solaris2\
:/proj/s_core/tools/config_specs\
:/vob/sectel/sec_voip_vob/code/hmi/tools/update_header\
:/vob/sectel/sec_tools_vob/scripts\
:/vob/sectel/sec_voip_vob/code/hmi/tools/error_code_oracle\
:/proj/s_core/local/bin\
:/proj/s_core/local/ctags/bin\
:/proj/s_core/local/java/jdk1.5.0_06/bin\
:/usr/atria/bin\
:/usr/local/bin\
:/usr/bin\
:$PATH

#else
#    echo "Other"
fi

export PATH


# Source aliases
source ~/.alias

# User specific exports
export EDITOR=vim
export SVN_EDITOR=vim

# set vi mode
set -o vi

# Set pager
export PAGER=less
