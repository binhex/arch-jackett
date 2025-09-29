#!/usr/bin/dumb-init /bin/bash

# source in utils functions
source utils.sh

# symlink jacket created definitions to config folder
symlink --src-path '/config/Jackett/Definitions' --dst-path '/usr/lib/jackett/Definitions' --link-type 'softlink'

# run jackett using .net core
/usr/lib/jackett/jackett --NoRestart --NoUpdates --DataFolder /config/Jackett
