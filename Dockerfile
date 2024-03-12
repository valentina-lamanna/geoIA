FROM node:14-alpine

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

COPY public /app/public
COPY src /app/src

RUN npm install @mui/material @emotion/react @emotion/styled
EXPOSE 3000

CMD ["npm", "start"]
