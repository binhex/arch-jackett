#!/usr/bin/dumb-init /bin/bash

# source in utils functions
source utils.sh

# symlink jacket created definitions to config folder
symlink --src-path '/usr/lib/jackett/Definitions' --dst-path '/config/Jackett/Definitions' --link-type 'softlink'

# run jackett using .net core
/usr/lib/jackett/jackett --NoRestart --NoUpdates --DataFolder /config/Jackett
