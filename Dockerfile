FROM node:22-alpine 

WORKDIR /app

COPY . .

RUN npm install --legacy-peer-deps

COPY docker-entrypoint.sh .
RUN chmod +x ./docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]
