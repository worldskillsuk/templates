FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

RUN cat > /etc/nginx/conf.d/default.conf <<'NGINX_EOF'
server {
    listen 80;
    root /usr/share/nginx/html;
    index index.html;
    location / {
        try_files $uri /index.html;
    }
}
NGINX_EOF

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
