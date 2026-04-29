# Local Development

This repository uses Docker for local Jekyll development. Ruby does not need to be installed on Windows.

## Commands

From the repository root, run:

```bash
make help
make run
make test
make clean
make down
make shell
```

## Target reference

- `make help` prints the available commands.
- `make run` starts the local site with `docker compose up --build`.
- `make test` runs a clean Jekyll build inside Docker.
- `make clean` removes generated Jekyll output and cache files.
- `make down` stops the Docker Compose stack.
- `make shell` opens a shell inside the Jekyll container.

## Local URL

When `make run` is active, the site is available at:

`http://127.0.0.1:4000/portfolio/`
