#!/bin/bash
clear
sleep 0.5

echo "$(printf '#%.0s' {1..80})"
echo "## $(printf ' %.0s' {1..74}) ##"
echo "     This script ensures docker is running on the host system as it is required "
echo "## $(printf ' %.0s' {1..74}) ##"
echo "$(printf '#%.0s' {1..80})"

echo 

echo "$(printf '#%.0s' {1..80})" 
echo "## $(printf ' %.0s' {1..74}) ##"
echo "      Installing programs and making depeneencies"
echo "## $(printf ' %.0s' {1..74}) ##"
echo "$(printf '#%.0s' {1..80})"

echo

echo "$(printf '#%.0s' {1..80})" 
echo "## $(printf ' %.0s' {1..74}) ##"
echo "      Verifying docker in installed"
echo
sleep 0.5
docker -v
echo "## $(printf ' %.0s' {1..74}) ##"
echo "$(printf '#%.0s' {1..80})"

echo 

echo "$(printf '#%.0s' {1..80})" 
echo "## $(printf ' %.0s' {1..74}) ##"
echo "      Installing scripts"
sleep 0.1
chmod +x dkr_Application_stack.sh
chmod +x App_stack_cleanup.sh
echo "installed"

echo "## $(printf ' %.0s' {1..74}) ##"
echo "$(printf '#%.0s' {1..80})"

echo 

echo "$(printf '#%.0s' {1..80})" 
echo "## $(printf ' %.0s' {1..74}) ##"
echo "      Removing Bloat"
mkdir -p readme
shopt -s nullglob
mv *.md readme/
sleep 0.5
echo "Bloat removed"
echo "## $(printf ' %.0s' {1..74}) ##"
echo "$(printf '#%.0s' {1..80})"