FROM node:lts as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm config set strict-ssl false
RUN npm cache clean --force
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build -- --base-href=./

FROM nginx:alpine

COPY --from=build-stage /app/dist/angular-base/browser /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
