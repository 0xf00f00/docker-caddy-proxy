FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddyserver/forwardproxy@caddy2=github.com/klzgrad/forwardproxy@naive \
    --with github.com/porech/caddy-maxmind-geolocation \
    --with github.com/caddy-dns/cloudflare

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy