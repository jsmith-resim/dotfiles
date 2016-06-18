
ZSH_THEME_GIT_PROMPT_PREFIX=" %F{green}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{green})"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}!"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{green}"

PROMPT='%f%k%b%
%K{black}%F{blue}%~ $(git_prompt_info) %F{magenta}%0(?..[%?])%E
%{%f%k%b%}%#%{%f%k%b%} '
