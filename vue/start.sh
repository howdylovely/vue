#!/bin/bash
#rsync -av /usr/src/app/myapp/ /www/myapp
set -x

CURRENT_ENV=$1
APP_NAME=myapp

case $CURRENT_ENV in
    create)        
            /bin/bash /usr/src/app/vue_init.sh $CURRENT_ENV
            cp -rf /usr/src/app/myapp /www/
            cp -f /usr/src/app/start.sh /www/myapp/start.sh
            cd /www/myapp
            npm install
            npm start
        ;;
    setting)
            cd /www/myapp
            npm install
            npm start
        ;;
    build)
            cd /www/myapp
            npm install
            npm build
        ;;
    deploy)
        ;;
    *) echo 'Input create or setting or build or deploy';;
esac