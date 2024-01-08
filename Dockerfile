FROM nginx:1.25.0-bullseye
LABEL author="Shyam Sreenivasan"
RUN rm /etc/nginx/conf.d/default.conf
COPY ./config/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]