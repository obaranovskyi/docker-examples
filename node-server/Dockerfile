FROM node:latest

# This is optional good for debugging
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . . 

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]
