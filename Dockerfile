FROM node:alpine-6

RUN mkdir /usr/chat

WORKDIR /usr/chat

COPY package.json npm-shrinkwrap.json ./

RUN npm install --silent --progress=false && npm cache clean

COPY src/ ./src

CMD ["npm", "start"]