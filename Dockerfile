FROM nginx:1.27-alpine

COPY ["study-rooms (6).html", "/usr/share/nginx/html/index.html"]

EXPOSE 80
