# ~/.config/fish/config.fish
set -U fish_greeting ""
# Prompt (fish has own prompt system, use this or run fish_config)
# function fish_prompt
#     set_color --background=303446 white
#     echo -n ' ' (whoami) ' '
#     set_color --background=eba0ac 303446
#     echo -n ''
#     set_color --background=eba0ac 303446
#     echo -n ' '
#     set_color --background=a6e3a1 303446
#     echo -n (prompt_pwd)
#     set_color --background=a6e3a1 303446
#     echo -n ' '
#     set_color --background=89b4fa 303446
#     echo -n ''
#     set_color --background=89b4fa black
#     echo -n ' '
#     set_color --background=f5c2e7 89b4fa
#     echo -n ''
#     set_color --background=f5c2e7 black
#     echo -n ' ' (date '+%H:%M') ' '
#     set_color normal --background=normal
#     echo -n ''
#     set_color normal
#     echo -n ' '
# end

# PATH
fish_add_path $HOME/.local/bin $HOME/bin ~/go/bin

# Docker
abbr -a dcu 'docker compose up -d'

# Lazy
abbr -a lazyd lazydocker
abbr -a lazyg lazygit

# Directories
abbr -a .. 'cd ..'
abbr -a ... 'cd ../..'

# Git
abbr -a gs 'git status'
abbr -a ga 'git add .'
abbr -a gp 'git push'
abbr -a gl 'git pull'
abbr -a gc 'git commit -m'
# Useful
abbr -a c clear
abbr -a reload 'source ~/.config/fish/config.fish'

# Other
abbr -a faketree 'tree -I "node_modules|vendor"'
abbr -a smartcow 'fortune | cowsay'
