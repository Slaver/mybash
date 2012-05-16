# Adapted from http://gist.github.com/31934
#   http://henrik.nyh.se/2008/12/git-dirty-prompt
#   http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/

#Mysql Prompt
export MYSQL_PS1="(\u@\h) [\d]> "

function git_branch {
  git rev-parse --git-dir &> /dev/null
  git_status="$(git status 2> /dev/null)"
  branch_pattern="^# On branch ([^${IFS}]*)"
  remote_pattern="# Your branch is (.*) of"
  diverge_pattern="# Your branch and (.*) have diverged"
  if [[ ! ${git_status}} =~ "working directory clean" ]]; then
    state="[${RED}⚡${COLOR_NONE}]";
  fi
  # add an else if or two here if you want to get more specific
  if [[ ${git_status} =~ ${remote_pattern} ]]; then
    if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
      remote="[${YELLOW}↑${COLOR_NONE}]";
    else
      remote="[${YELLOW}↓${COLOR_NONE}]";
    fi
  fi
  if [[ ${git_status} =~ ${diverge_pattern} ]]; then
    remote="[${YELLOW}↕${COLOR_NONE}]";
  fi
  if [[ ${git_status} =~ ${branch_pattern} ]]; then
    branch="[${GREEN}${BASH_REMATCH[1]}${COLOR_NONE}]";
    echo "${remote}${state}${branch}";
  fi
}

function prompt_func() {

    my_ps_user="\[\033[01;32m\]\u\[\033[00m\]";
    my_ps_root="\[\033[01;31m\]\u\[\033[00m\]";
    my_ps_path="\[\033[01;36m\]\w\[\033[00m\]";

   case $HOSTNAME in
    "slaver") my_ps_host="\[\033[01;32m\]$HOSTNAME\[\033[00m\]";
            ;;
    * ) my_ps_host="\[\033[01;31m\]$HOSTNAME\[\033[00m\]";
            ;;
   esac


    # nice prompt
#    case "`id -u`" in
#        0) PS1="[$my_ps_root][$my_ps_host]:($(__my_rvm_ruby_version)$(git_branch):$my_ps_path)\$ "
#	;;
#        *) PS1="$my_ps_user@$my_ps_host:$my_ps_path\$ "
#        ;;
#    esac

# $(git_branch)
PS1="$my_ps_user@$my_ps_host:$my_ps_path\$ "

}

PROMPT_COMMAND=prompt_func
