FROM node:18

WORKDIR /app

RUN npm install -g medusa-cli
RUN medusa new my-medusa-store --backend --skip-db

WORKDIR /app/my-medusa-store

RUN npm install

EXPOSE 9000
CMD ["npm", "run", "start"]
