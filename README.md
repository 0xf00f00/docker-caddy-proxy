# docker-caddy-proxy

Custom Caddy docker image, built with:

- [`forwardproxy`](https://github.com/sagernet/forwardproxy) (sagernet fork) — HTTP/HTTPS forward proxy
- [`caddy-maxmind-geolocation`](https://github.com/porech/caddy-maxmind-geolocation) — GeoIP request matching
- [`caddy-dns/cloudflare`](https://github.com/caddy-dns/cloudflare) — Cloudflare DNS-01 ACME challenge (valid certs without inbound :80/:443; works behind Cloudflare's proxy)

```
docker pull ghcr.io/0xf00f00/caddy-proxy:latest
```

The Cloudflare DNS module reads its API token from the `CLOUDFLARE_API_TOKEN`
environment variable (a scoped token with `Zone:DNS:Edit` on the relevant zones).
