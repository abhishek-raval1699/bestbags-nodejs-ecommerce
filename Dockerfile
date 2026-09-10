FROM node:22-alpine 

WORKDIR /app

COPY . .

RUN npm install --legacy-peer-deps


CMD [ "npm","start" ]
