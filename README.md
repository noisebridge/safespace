# safespace
A web app for reporting safety issues.

## Development

Copy the example env file and fill in your Discord webhook tokens:

```sh
cp .env.example .env
```

Start the app:

```sh
docker compose up
```

The app will be available at `http://localhost:8080`. Changes to `app/index.php` are reflected immediately without restarting.

## Deployment

On every push to `main`, GitHub Actions builds a Docker image and publishes it to the GitHub Container Registry:

```
ghcr.io/elevated-pasta-cat/safespace:latest
ghcr.io/elevated-pasta-cat/safespace:<commit-sha>
```

After build, the idea is for infrastructure deploys to pull this image - this is defined in `roles/safespace-docker/files/compose.yaml`
