#!/usr/bin/env bash

function help {
   echo "Usage: $0 keyfile ssh-host-spec"
   echo "  keyfile        path to the SSH public key file to deploy"
   echo "  ssh-host-spec  the hostname, alias, or user@host to deploy to"
   exit 127
}

if [ -n "$1" ]
then
   keypath="$1"
   shift
else
   help
fi

if [ -n "$1" ]
then
   hostspec="$1"
   shift
else
   help
fi


if !(echo "$keypath" | egrep -q "\.pub$")
then
   read -a ans -n 1 -p "'$keypath' doesn't look like a public key file, proceed anyway [y/N]?"
   if [ ans == "Y" -o ans == "y" ]
   then
      echo "Ok, continuing"
   else
      echo "Aborting"
      exit 1
   fi
fi   

cat "$keypath" | ssh "$hostspec" 'mkdir -p .ssh ; chmod 0700 .ssh ; cat >> .ssh/authorized_keys ; chmod 0644 .ssh/authorized_keys'
