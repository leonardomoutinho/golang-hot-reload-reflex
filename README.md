# golang-hot-reload-reflex
This is a repo that contains source code of hot-reload docker container for Golang apps

## Usage with docker compose:
```yaml
services:
  app:
    image: leonardogetulio/reflex:latest
    ports:
      - "8080:80"
    volumes:
      - "./:/app"
      - "./.env.docker:/app/.env"
    environment:
      - DEBUG=True
      # Add any other environment variables your app requireses
    command:
      - "cmd/daemon/main.go"
      - "my-app-param"
    restart: unless-stopped
```