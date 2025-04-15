#!/bin/bash

set -e 

INSTANCEID=$(curl http://169.254.169.254/latest/meta-data/instance-id)

PUBLICIP=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)

PRIVATEIP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)

SG=$(curl http://169.254.169.254/latest/meta-data/security-groups)

echo """Instance ID: $INSTANCEID
Public IP: $PUBLICIP
Private IP: $PRIVATEIP 
Security Groups: $SG""" > metadata.txt
