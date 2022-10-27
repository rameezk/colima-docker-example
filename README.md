# colima-docker-example

> An high level example of using [Colima](https://github.com/abiosoft/colima) as a Docker Desktop replacement

## Disclaimer
This was tested on an M1 MacBook Pro using the Nix package manager.

This that were tested:
- [x] Pulling a Docker Image from a corporate image repo
- [x] `http_proxy` defined in _~/.docker/config.json_ is honoured

## Prerequisites

- Colima
- docker-client
- docker-compose
- docker-credential-helpers (needed for pulling from private registries)

If you're using Nix, see [shell.nix](./shell.nix) for all components needed.

## Method

1. Stop Docker Desktop
2. Run `colima start`
3. Do docker things e.g. `docker build`, `docker-compose up` etc.

## Opt Out of Colima
Colima mutates the `context` in your _~/.docker/config.json`. To remove run:
```shell
docker context use default
```
