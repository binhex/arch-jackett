#!/usr/bin/dumb-init /bin/bash

# run jackett using .net core
/usr/lib/jackett/jackett --NoRestart --NoUpdates --DataFolder /config/Jackett
