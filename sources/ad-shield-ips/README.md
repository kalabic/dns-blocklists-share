# Ad-Shield IP sources

These notes are the provenance for [`share/ad-shield-ips.txt`](../../share/ad-shield-ips.txt).

Ad-Shield hostnames were resolved, and the addresses they landed on were collected. Each address was then opened on bgp.he.net, which lists other hostnames seen on that same address. Those pages are the source record for the IP list.

The addresses are Cloudflare anycast addresses, so other customers share them. The HE.net pages include many hostnames that are not Ad-Shield. This folder records where the addresses came from. The blocklist itself is the address file in `share/`.

`104.26.11.251` is in the address file. There is no HE.net page for it in the source notes.

Several lookups returned the same hostname sample: `104.18.20.31` with `104.18.21.31`, `104.20.24.1` with `172.66.151.220`, `104.20.32.100` with `172.66.161.230`, and `104.26.10.251` with `172.67.70.66`. Each page showed 960 names, which is the HE.net result cap, so the pages are samples.

## Lookups

- https://bgp.he.net/ip/104.18.20.31
- https://bgp.he.net/ip/104.18.21.31
- https://bgp.he.net/ip/104.20.24.1
- https://bgp.he.net/ip/104.20.32.100
- https://bgp.he.net/ip/104.26.10.251
- https://bgp.he.net/ip/172.66.151.220
- https://bgp.he.net/ip/172.66.161.230
- https://bgp.he.net/ip/172.67.70.66
