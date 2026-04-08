# safespace

A web app for reporting safety issues.

## Development

Copy the example env file and fill in your Discord webhook tokens:

```sh
cp .env.example .env
```

Start the app:

```sh
docker compose up --build
```

The app will be available at `http://localhost:8080`. Changes to `app/index.php` are reflected immediately without restarting.

## Deployment

On every push to `main`, GitHub Actions builds a Docker image and publishes it to the GitHub Container Registry:

```
ghcr.io/noisebridge/safespace:latest
ghcr.io/noisebridge/safespace:<commit-sha>
```

The production deployment is located in the `safespace-docker` role in [Noisebridge Infrastructure](https://github.com/noisebridge/infrastructure)
