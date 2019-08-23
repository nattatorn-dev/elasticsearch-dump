FROM node:10-alpine

WORKDIR /usr/bin

COPY package*.json ./
RUN npm install

COPY . .

ENTRYPOINT ["bin/elasticdump"]
