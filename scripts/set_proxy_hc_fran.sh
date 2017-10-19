#!/bin/bash

echo "Don't forget to run this in the form '. script.sh' to ensure the export affects the current shell"

PROXY=franpac
PASSWORD_HEX=""

# Read user
echo -n User:
read USER

# Read Password
echo -n Password:
read -s PASSWORD
echo

# Change Password to Hex to solve any special characters
for ((i=0; i<${#PASSWORD}; i++))
do
 PASSWORD_HEX=$PASSWORD_HEX$(printf "%%%02x" \'${PASSWORD:$i:1});
done

#echo $PASSWORD_HEX

export http_proxy="http://$USER:$PASSWORD_HEX@$PROXY"

