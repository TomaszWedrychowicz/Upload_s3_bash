#!/bin/bash

set -e 

INSTANCEID=$(curl http://169.254.169.254/latest/meta-data/instance-id)

PUBLICIP=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)

PRIVATEIP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)

SG=$(curl http://169.254.169.254/latest/meta-data/security-groups)

OS=$(cat /etc/os-release | grep "^NAME=" | cut -d "=" -f2 | tr -d '"')

OSV=$(cat /etc/os-release | grep "^VERSION_ID=" | cut -d "=" -f2 | tr -d '"')

echo """Instance ID: $INSTANCEID
Public IP: $PUBLICIP
Private IP: $PRIVATEIP 
Security Groups: $SG
Operating System: $OS $OSV""" > metadata.txt
