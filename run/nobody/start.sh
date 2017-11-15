#!/bin/bash

# setup environment
export XDG_CONFIG_HOME=/config

# run jackett using mono
/usr/bin/mono --debug /opt/Jackett/JackettConsole.exe --NoRestart
