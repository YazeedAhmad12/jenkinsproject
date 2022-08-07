FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

RUN npm install mysql

COPY . .

EXPOSE 3000

VOLUME [ "/app/node_modules" ]

CMD ["npm", "run", "dev"]