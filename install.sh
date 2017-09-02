#!/bin/sh

runScript() {
  sudo -E -u www-data -H $*
}

install_prestissimo="composer global require hirak/prestissimo --no-progress"

runScript $install_prestissimo
exec $install_prestissimo
