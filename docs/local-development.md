# Local Development

This repository uses Docker for local Jekyll development. Ruby does not need to be installed on Windows.

## Start the site

From the repository root, run:

```bash
docker compose up --build
```

The site will be available at:

`http://127.0.0.1:4000/portfolio/`

## Notes

- The repository is bind-mounted into the container, so local file changes are reflected immediately.
- The container runs `bundle install` before starting Jekyll.
- Jekyll serves on `0.0.0.0:4000`.
- LiveReload is enabled on port `35729`. If browser refresh behavior is inconsistent on Windows file mounts, restart the compose stack.

## Stop the site

In another terminal from the repository root:

```bash
docker compose down
```
