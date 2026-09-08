FROM node:22-alpine

WORKDIR /app

COPY . .

RUN npm install --legacy-peer-deps

RUN npm build 

CMD [ "npm","start" ]


