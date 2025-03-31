FROM debian:bullseye
RUN apt-get update

RUN apt-get install -y curl make g++

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
RUN apt-get install -y nodejs

ADD . /app
RUN npm install --legacy-peer-deps

EXPOSE 8080

CMD ["node", "index.js"]
