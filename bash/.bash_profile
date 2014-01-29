# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/bin/dotfiles/bash/.{bash_prompt,exports,aliases}; do
        [ -r "$file" ] && source "$file"
done
unset file

# init rmv
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# Enable git completion
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
   source /usr/local/etc/bash_completion.d/git-completion.bash
fi

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

