CHRUBY_FILE=/usr/local/share/chruby/chruby.sh

if [ -f $CHRUBY_FILE ]; then
  source $CHRUBY_FILE

  chruby 2.7.0
fi
