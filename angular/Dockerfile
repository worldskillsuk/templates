FROM node:lts-alpine as build-stage
WORKDIR /app
COPY . .
RUN npm ci --legacy-peer-deps || npm install --legacy-peer-deps
RUN npm run build

FROM nginx:alpine

COPY --from=build-stage /app/dist/angular-base/browser /usr/share/nginx/html

RUN cat > /etc/nginx/conf.d/default.conf <<'NGINX_EOF'
server {
    listen 80;
    root /usr/share/nginx/html;
    index index.html;
    location / {
        try_files $uri $uri/ /index.html;
    }
}
NGINX_EOF

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
