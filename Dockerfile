FROM node:22-alpine3.19

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 9000 7001

CMD [ "npm", "run", "start"]
