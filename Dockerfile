FROM node:12-alpine
RUN apk add --no-cache git && npm install -g caprover@^2.0.0 && npm cache clean --force
COPY run.sh /run.sh
ENTRYPOINT ["sh","/run.sh"]

