FROM node:20

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm install -g serve

ENV PORT=5000

EXPOSE 5000

CMD [ "serve", "-s", "dist" ]