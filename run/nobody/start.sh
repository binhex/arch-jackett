#!/usr/bin/dumb-init /bin/bash

# define paths to store index definitions
user_definitions_path='/config/Jackett/UserDefinitions'
container_definitions_path='/usr/lib/jackett/Definitions'

# create path to store user definitions
mkdir -p "${user_definitions_path}"

# copy user definitions to the container
cp -a "${user_definitions_path}/." "${container_definitions_path}/"

# run jackett using .net core
/usr/lib/jackett/jackett --NoRestart --NoUpdates --DataFolder '/config/Jackett'
