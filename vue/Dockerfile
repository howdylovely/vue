FROM node:10.16.3-alpine

MAINTAINER Shuaibing Wang <wowangshuaibing@126.com>

# Install base packages and set timezone ShangHai
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update && apk add bash tzdata git \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && npm config set @jd:registry http://registry.m.jd.com \
    #&& npm install -g cnpm --registry=https://registry.npm.taobao.org \
    # && cnpm install -g vue-cli --save-dev \
    # && cnpm install -g vue --save-dev \
    # && cnpm install -g webpack-dev-server --save-dev
    && npm install -g vue-cli --save-dev \
    && npm install -g vue --save-dev \
    && npm install -g webpack-dev-server --save-dev

WORKDIR /usr/src/app
COPY start.sh /usr/src/app
COPY vue_init.sh /usr/src/app
RUN chmod +x /usr/src/app/start.sh
RUN chmod +x /usr/src/app/vue_init.sh

#RUN ./vue_init.sh $1
# RUN ( \
# #Project name
# echo -e '\n' \ 
# && sleep 12 \
# #Project description
# && echo 'howtoing description' \
# && sleep 2 \
# #Author
# && echo 'wowangshuaibing@126.com' \
# && sleep 2 \
# #Vue build
# && echo '\n' \
# && sleep 2 \
# #Install vue-route
# && echo -e 'Y' \
# && sleep 2 \
# #Use ESLint to lint your code
# && echo -e 'Y' \
# && sleep 2 \
# #Pick an ESLint preset
# && echo -e '\n' \
# && sleep 2 \
# # #Set up unit tests
# && echo -e 'n' \
# && sleep 2 \
# # # Set e2e tests with Nightwatch
# && echo -e 'n' \
# && sleep 2 \
# # #npm install
# && echo -e '\n' \
# && sleep 2 \
# )|vue init webpack $APP_NAME


EXPOSE 8080

CMD [ "./start.sh"]
