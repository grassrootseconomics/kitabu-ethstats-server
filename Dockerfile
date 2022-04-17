FROM node:17-alpine

EXPOSE 3000
CMD ["npm", "start"]

RUN apk add --no-cache git
WORKDIR /app

COPY package.json ./
RUN npm i

COPY . .