<h1 align="center">Docker DEV Box</h1>

<div align="center">

![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/giuseppemorelli/docker-devbox?sort=semver&style=for-the-badge)
![GitHub](https://img.shields.io/github/license/giuseppemorelli/docker-devbox?style=for-the-badge)

</div>

Simple docker-compose.yml file with pre-configured services.  
Can create multiple environment, start with `local`

Inspired by [Devilbox](http://devilbox.org/)

---

## How to Use the Docker DEV Box

### 1. Prerequisites

- Install [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) on your system.

### 2. Clone the Repository

```sh
git clone https://github.com/giuseppemorelli/docker-devbox.git
cd docker-devbox
```

### 3. Configure Your Environment

- Copy the example environment file and adjust as needed:
  ```sh
  cp local/env.dist local/.env
  # Edit local/.env to match your requirements
  ```
  
- Uncomment the services you want to use in the `docker-compose.yml` file.  
  For example, to enable MySQL, uncomment the following lines:
  ```yaml
  mysql:
    container_name: ${COMPOSE_PROJECT_NAME}_${MYSQL_SERVER_NAME}
    image: ${MYSQL_SERVER}

    environment:
      MYSQL_ROOT_PASSWORD: "docker"
      # for mysql 8 comment user and password user, need to create via script only for legacy project
      MYSQL_USER: "local"
      MYSQL_PASSWORD: "local"
    # ....
  ```

### 4. Start the Services

- From the environment root, run:
  ```sh
  cd local
  docker-compose up -d
  ```
  
### 5. Stopping and Cleaning Up

- To stop the services:
  ```sh
  cd local
  docker-compose down -v
  ```

<hr />

### How-to

- [Cloudflare Tunnel](docs/cloudflare-tunnel.md)
