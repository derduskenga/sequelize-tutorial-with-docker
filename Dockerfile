FROM node:latest
LABEL Author="Derdus Kenga"
RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json .

RUN npm install

COPY .  /app/src

RUN npx sequelize-cli db:migrate

EXPOSE 3000

CMD [ "npm", "start"]