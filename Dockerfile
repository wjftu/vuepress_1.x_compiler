FROM node:14

LABEL "com.github.actions.name"="vuepress1.x_compiler"
LABEL "author"="Jianfeng"

RUN apt update && yarn global add vuepress && yarn global add @vuepress/plugin-google-analytics

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]