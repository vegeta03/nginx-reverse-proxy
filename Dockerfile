FROM nginx:alpine
LABEL author="Shyam Sreenivasan"
RUN rm /etc/nginx/conf.d/default.conf
COPY ./config/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

# docker build -t ng-rails .
# docker run -p 8080:80 ng-rails