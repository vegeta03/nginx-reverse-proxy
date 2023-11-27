# Stage 1: Build the application
FROM node:latest as build-step
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build


# Stage 2: Serve the application
FROM nginx:alpine
COPY --from=build-step /app/dist/ng-rails /usr/share/nginx/html

