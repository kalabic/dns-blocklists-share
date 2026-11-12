# dns-blocklists-share

Shared blocklists for Ad-Shield. One entry per line.

## Lists

- [`share/ad-shield.txt`](share/ad-shield.txt) - Ad-Shield and related hosts
- [`share/ad-shield-ips.txt`](share/ad-shield-ips.txt) - the Ad-Shield IP addresses where most resolved hostnames landed. The addresses are Cloudflare anycast addresses, so other customers share them. Provenance is in [`sources/ad-shield-ips/`](sources/ad-shield-ips/README.md)

## Sort

```sh
./sort_share_ad-shield.sh
```

Deduplicates `share/ad-shield.txt` (case-insensitive) and writes it back in place.

## License

[GPL-3.0](LICENSE)
