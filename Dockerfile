FROM node:14.7.0
ARG JAR_FILE=usr/src/app*.json
COPY ${JAR_FILE} package.json
ENTRYPOINT ["js","-js","/package.json"]
