FROM dunglas/frankenphp:1.12.1-php8.5-alpine

# FrankenPHP's default docroot is /app/public.
COPY app/ /app/public/

# Default Caddyfile baked in so `docker run -p 8080:80 ghcr.io/.../safespace`
# Just Works for local development. The infrastructure repo bind-mounts its
# own Caddyfile over this at deploy time to add the public hostname, TLS,
# logging, and security headers.
COPY Caddyfile /etc/frankenphp/Caddyfile

EXPOSE 80 443
# CMD inherited from base image: `frankenphp run --config /etc/caddy/Caddyfile`
