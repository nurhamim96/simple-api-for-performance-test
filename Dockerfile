FROM alpine:3.4
RUN apk update && apk upgrade --no-cache
RUN apk add nodejs
RUN rm -rf /var/cache/apk/*

COPY . /src
RUN cd /src; npm install
EXPOSE 8080
CMD ["node", "/src/server.js"]

# run command in terminal
# 1. docker build -t tutorial/hapi .
# 2. docker run -p 8080:8080 -d tutorial/hapi