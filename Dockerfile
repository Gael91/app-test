FROM node:18.19.1

WORKDIR /app
COPY .env.dev .env
COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 4000

CMD ["npm", "start"]