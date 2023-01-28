FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddyserver/forwardproxy@caddy2=github.com/sagernet/forwardproxy@latest \
    --with github.com/porech/caddy-maxmind-geolocation \
    --with github.com/mastercactapus/caddy2-proxyprotocol

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy