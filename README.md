# NgRails

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 17.0.3.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Using Docker

From the project root directory run the following commands to build and run using docker

1. `docker build -t ng-rails .`
2. `docker run -p 8080:80 ng-rails`
3. The application will be served at `http://localhost:8080` with production configuration using Nginx.
