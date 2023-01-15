FROM node:12-alpine

COPY chatapp /chatapp

WORKDIR /chatapp

RUN npm install

RUN npm run dev

RUN npm install pusher-js

ENTRYPOINT ["npm", "run", "start:dev"]