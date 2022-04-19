FROM node:14-alpine
RUN apk add --no-cache git && npm install -g caprover && npm cache clean --force
COPY run.sh /run.sh
ENTRYPOINT ["sh","/run.sh"]

