#!/bin/bash

echo "Enter mysql db user name :"

read dbuser

echo "Enter mysql db password :"

read dbpass

echo "Enter database name :"

read dbname

echo "Logging into mysql ..."

cmd1="mysql --user=$dbuser --password=$dbpass -D $dbname -e 'drop database if exists $dbname; create database $dbname;'"

cmd2="mysql --user=$dbuser --password=$dbpass -D $dbname < productapp.sql;"

cmd3="sudo npm install"

cmd4="node server"

eval $cmd1
eval $cmd2

echo "Installing npm dependencies. Sudo password prompt incoming..."

eval $cmd3

echo "Starting up ..."

eval $cmd4
