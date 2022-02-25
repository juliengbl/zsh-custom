export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Theme
 ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[green]%}"
 ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
 ZSH_THEME_GIT_PROMPT_DIRTY="$FG[130] ✗%{$reset_color%}"
 ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ±%{$reset_color%}"
 ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[cyan]%} ▴%{$reset_color%}"
 ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[magenta]%} ▾%{$reset_color%}"
 ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✓%{$reset_color%}"

 function prompt_char {
        if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
        }

        PROMPT='[%{$fg[red]%}%n@%m%{$reset_color%}:%{$fg[magenta]%}%c%{$reset_color%}%{$fg[gray]%}$(git_prompt_info)]%{$fg[yellow]%}$(prompt_char)%{$reset_color%} '

        RPROMPT='$FG[059][%~]$FG[059][%D/%*]%(?,$FG[022][R-$?],$FG[130][$?])$FG[024][!%!]%{$reset_color%}'

        # Auto suggestion
        source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
        ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=22"
        TERM=xterm-256color
