#!/bin/bash

# setup environment
export XDG_CONFIG_HOME=/config

# run jackett using mono
/usr/bin/mono --debug  /usr/lib/jackett/JackettConsole.exe --NoRestart
