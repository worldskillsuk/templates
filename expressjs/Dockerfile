FROM node:lts

WORKDIR /app
COPY ./ /app
RUN npm config set strict-ssl false
RUN npm install

CMD ["node","app.js"]