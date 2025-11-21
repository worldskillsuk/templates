FROM node:lts

WORKDIR /app
COPY . .
RUN npm config set strict-ssl false
RUN npm install

EXPOSE 80

CMD ["node", "src/server.js"]
