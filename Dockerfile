FROM nginx:alpine
RUN rm -rf /etc/nginx/conf.d/*
COPY ./about.conf ./etc/nginx/conf.d/

WORKDIR /var/www/about
COPY ./index.html ./

ENTRYPOINT ["nginx", "-g", "daemon off;"]
