##### Stage 1
FROM node:lts as node
LABEL author="Shyam Sreenivasan"
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

##### Stage 2
FROM nginx:alpine
VOLUME /var/cache/nginx
COPY --from=node /app/dist/ng-rails/browser /usr/share/nginx/html
COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf

# docker build -t ng-rails .
# docker run -p 8080:80 ng-rails