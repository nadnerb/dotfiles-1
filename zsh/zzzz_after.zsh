# Load any custom after code
if [ -d $HOME/.zsh.after/ ]; then
  if [ "$(ls -A $HOME/.zsh.after/)" ]; then
    for config_file ($HOME/.zsh.after/*.zsh) source $config_file
  fi
fi

#alias psql='docker exec oculo-postgres psql'
#alias pg_dump='docker exec oculo-postgres pg_dump'

