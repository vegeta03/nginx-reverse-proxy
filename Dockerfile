FROM nginx:alpine

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom NGINX reverse proxy configuration file
COPY ./config/nginx-reverse-proxy.conf /etc/nginx/nginx.conf

# Expose port 80 to the Docker host, so we can access the reverse proxy
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
