# Nginx Reverse Proxy

## Steps to follow

1. Clone this repo: `git clone https://github.com/vegeta03/nginx-reverse-proxy.git`
2. `cd nginx-reverse-proxy` and clone the Angular sample frontend and RoR sample backend using the following commands
3. `git clone https://github.com/vegeta03/ng-rails.git`
4. `git clone https://github.com/vegeta03/ror-sample.git`

## Use Docker Compose to build and run all (ng-rails, ror-sample and nginx-reverse-proxy)

`docker compose up --build`

## Useful Docker commands

To delete all Docker images and containers, you can use a combination of Docker commands. Be cautious with these commands, as they will remove all your Docker containers and images, which is irreversible. Ensure that you really want to remove everything before proceeding.

Here are the commands:

1. **Stop All Running Containers**:

   ```bash
   docker stop $(docker ps -a -q)
   ```

   This command stops all running containers. `docker ps -a -q` lists all containers' IDs.

2. **Remove All Containers**:

   ```bash
   docker rm $(docker ps -a -q)
   ```

   This command removes all containers. `docker ps -a -q` lists all containers' IDs.

3. **Remove All Docker Images**:

   ```bash
   docker rmi $(docker images -q)
   ```

   This command removes all Docker images. `docker images -q` lists all image IDs.

### Additional Commands

- **Remove Dangling Images**:
  If you only want to remove dangling images (unused or untagged images), use:

  ```bash
  docker image prune -a
  ```

- **Remove Unused Volumes**:
  To remove volumes not used by at least one container, use:

  ```bash
  docker volume prune
  ```

- **Remove Unused Networks**:
  To remove networks not used by at least one container, use:

  ```bash
  docker network prune
  ```

- **Remove Everything (Containers, Images, Volumes, Networks)**:

  If you want to remove all of these at once, Docker provides a powerful cleanup command:

  ```bash
  docker system prune -a --volumes
  ```

This command will remove:

- All stopped containers
- All networks not used by at least one container
- All images without at least one container associated with them
- All build cache
- All volumes not used by at least one container

Remember, these commands will delete your data, so use them carefully. Ensure that you do not need any of the containers, images, volumes, or networks before running these commands.
