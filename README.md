# dns-blocklists-share

Shared DNS blocklists. One hostname per line.

## Lists

- [`share/ad-shield.txt`](share/ad-shield.txt) — Ad-Shield and related hosts

## Sort

```sh
./sort_share_ad-shield.sh
```

Deduplicates `share/ad-shield.txt` (case-insensitive) and writes it back in place.

## License

[GPL-3.0](LICENSE)
