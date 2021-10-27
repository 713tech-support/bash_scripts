#!/usr/bin/env bash
#---------------------------------------------------------------
# Author: Ryan C
# Date: 10/27/2021
# Description: Fill in the variables to suit your environment. 
# Makes SSHing into remote server easier.
#---------------------------------------------------------------
USER=           # User on remote server
REMOTE_IP=      # Remote server IP Address
PORT=           # SSH Listen Port for Remote Server
KEY=            # Path to private key file for authentication
#---------------------------------------------------------------
if [[ ! -f $KEY ]]; then
    echo "ERROR: Can't find $KEY!"
    sleep 3 
    exit 1
else
    ssh -i "$KEY" -p "$PORT" "$USER"@"$REMOTE_IP"
fi
