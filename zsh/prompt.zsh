ZSH_THEME="powerlevel9k/powerlevel9k"


# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{black}%F{green} \uf155%f%F{black} %k\ue0b0%f "

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir vcs)


# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue231'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

# Context
DEFAULT_USER=$USER
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='blue'
POWERLEVEL9K_CONTEXT_TEMPLATE="%F{cyan}%n%f"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'

# Dirs
POWERLEVEL9K_DIR_HOME_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# OS segment
# POWERLEVEL9K_OS_ICON_BACKGROUND='black'
# POWERLEVEL9K_LINUX_ICON='%F{cyan}\uf300 %F{white}arch%F{cyan}linux%f'

# Command auto-correction.
ENABLE_CORRECTION="true"


# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"


# # VCS icons
# POWERLEVEL9K_VCS_GIT_ICON=$''
# POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$''
# POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
# POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
# POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
# POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
# POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# # VCS colours
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'

# VCS CONFIG
POWERLEVEL9K_SHOW_CHANGESET=false

# setopt prompt_subst
# autoload -Uz vcs_info

# zstyle ':vcs_info:*' stagedstr '+'
# zstyle ':vcs_info:*' unstagedstr '*'
# zstyle ':vcs_info:*' check-for-changes true
# zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
# zstyle ':vcs_info:*' formats '%F{5}[%F{12}%b %F{3}%u%F{2}%c%F{5}]%f'
# zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
# zstyle ':vcs_info:*' enable git
# +vi-git-untracked() {
#   if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
#     git status --porcelain | grep '??' &> /dev/null ; then
#     hook_com[unstaged]="%F{1}-%F{3}${hook_com[unstaged]}"
#   fi
# }

# precmd () { vcs_info }

# # PROMPT='%F{5}%F{2}%n@%m%b%F{5} %F{3}%3~ ${vcs_info_msg_0_} %f%# '
# PROMPT='%F{5}%F{2}%GGio:%b%F{5}%F{5}[%F{3}%3~%F{5}]${vcs_info_msg_0_}%F{1} λ%f '


# ### Segment drawing
# # A few utility functions to make it easy and re-usable to draw segmented prompts

# # CURRENT_BG='NONE'
# # PRIMARY_FG=black

# # # Characters
# # SEGMENT_SEPARATOR="\ue0b0"
# # PLUSMINUS="\u00b1"
# # BRANCH="\ue0a0"
# # DETACHED="\u27a6"
# # CROSS="\u2718"
# # LIGHTNING="\u26a1"
# # GEAR="\u2699"

# # # Begin a segment
# # # Takes two arguments, background and foreground. Both can be omitted,
# # # rendering default background/foreground.
# # prompt_segment() {
# #   local bg fg
# #   [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
# #   [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
# #   if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
# #     print -n "%{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%}"
# #   else
# #     print -n "%{$bg%}%{$fg%}"
# #   fi
# #   CURRENT_BG=$1
# #   [[ -n $3 ]] && print -n $3
# # }

# # # End the prompt, closing any open segments
# # prompt_end() {
# #   if [[ -n $CURRENT_BG ]]; then
# #     print -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
# #   else
# #     print -n "%{%k%}"
# #   fi
# #   print -n "%{%f%}"
# #   CURRENT_BG=''
# # }

# # ### Prompt components
# # # Each component will draw itself, and hide itself if no information needs to be shown

# # # Context: user@hostname (who am I and where am I)
# # prompt_context() {
# #   local user=`whoami`

# #   if [[ "$user" != "$DEFAULT_USER" || -n "$SSH_CONNECTION" ]]; then
# #     prompt_segment $PRIMARY_FG default " %(!.%{%F{yellow}%}.)$user "
# #   fi
# # }

# # # Git: branch/detached head, dirty status
# # prompt_git() {
# #   local color ref
# #   is_dirty() {
# #     test -n "$(git status --porcelain --ignore-submodules)"
# #   }
# #   ref="$vcs_info_msg_0_"
# #   if [[ -n "$ref" ]]; then
# #     if is_dirty; then
# #       color=yellow
# #       ref="${ref} $PLUSMINUS"
# #     else
# #       color=green
# #       ref="${ref} "
# #     fi
# #     if [[ "${ref/.../}" == "$ref" ]]; then
# #       ref="$BRANCH $ref"
# #     else
# #       ref="$DETACHED ${ref/.../}"
# #     fi
# #     prompt_segment $color $PRIMARY_FG
# #     print -Pn " $ref"
# #   fi
# # }

# # # Dir: current working directory
# # prompt_dir() {
# #   prompt_segment blue $PRIMARY_FG ' %~ '
# # }

# # # Status:
# # # - was there an error
# # # - am I root
# # # - are there background jobs?
# # prompt_status() {
# #   local symbols
# #   symbols=()
# #   [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}$CROSS"
# #   [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}$LIGHTNING"
# #   [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}$GEAR"

# #   [[ -n "$symbols" ]] && prompt_segment $PRIMARY_FG default " $symbols "
# # }

# # ## Main prompt
# # prompt_agnoster_main() {
# #   RETVAL=$?
# #   CURRENT_BG='NONE'
# #   prompt_status
# #   prompt_context
# #   prompt_dir
# #   prompt_git
# #   prompt_end
# # }

# # prompt_agnoster_precmd() {
# #   vcs_info
# #   PROMPT='%{%f%b%k%}$(prompt_agnoster_main) '
# # }

# # prompt_agnoster_setup() {
# #   autoload -Uz add-zsh-hook
# #   autoload -Uz vcs_info

# #   prompt_opts=(cr subst percent)

# #   add-zsh-hook precmd prompt_agnoster_precmd

# #   zstyle ':vcs_info:*' enable git
# #   zstyle ':vcs_info:*' check-for-changes false
# #   zstyle ':vcs_info:git*' formats '%b'
# #   zstyle ':vcs_info:git*' actionformats '%b (%a)'
# # }

# # prompt_agnoster_setup "$@"