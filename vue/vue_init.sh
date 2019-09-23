#!/bin/bash

set -x

if [ $1 != 'create' ]
then
    exit
fi

( 
#Project name
echo -e '\n'
sleep 12
#Project description
echo 'howtoing description'
sleep 2
#Author
echo 'wowangshuaibing@126.com'
sleep 2
#Vue build
echo '\n'
sleep 2 
#Install vue-route
echo -e 'Y'
sleep 2 
#Use ESLint to lint your code
echo -e 'Y'
sleep 2
#Pick an ESLint preset
echo -e '\n'
sleep 2 
# #Set up unit tests
echo -e 'n'
sleep 2
# # Set e2e tests with Nightwatch
echo -e 'n'
sleep 2
# #npm install
echo -e '\n'
sleep 2
)|vue init webpack myapp