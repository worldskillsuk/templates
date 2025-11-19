FROM node:lts-alpine as build-stage
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx 
COPY --from=build-stage /app/dist/angular-base/browser /usr/share/nginx/html