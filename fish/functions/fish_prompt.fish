function fish_prompt -d "Write out the prompt"
	set -l home_escaped (echo -n $HOME | sed 's/\//\\\\\//g')
	set -l prompt_symbol ''
	printf "%s%s%s %s%s" $USER (set_color $fish_color_cwd)@(set_color normal)(hostname -s) (set_color $fish_color_cwd) (set_color normal)
end

function fish_right_prompt
  set_color $fish_color_cwd
  echo -n $PWD | sed "s/^$home_escaped/~/" | sed 's/ /%20/g'
  set_color normal
  printf '%s' (__fish_git_prompt)
end

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate ''
set __fish_git_prompt_char_stashstate ''
set __fish_git_prompt_char_upstream_ahead ' ↑'
set __fish_git_prompt_char_upstream_behind ' ↓'
set ___fish_git_prompt_char_upstream_equal ' ='
