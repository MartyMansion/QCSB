# QC Small Business (QCSB)

Static marketing site for **QC Small Business** — hands-on IT support for independent brick-and-mortar shops in the Quad Cities (Iowa & Illinois).

**Live:** https://qcsmallbusiness.com/

## Stack

Plain HTML, CSS, and a tiny JS file. Grounded mid/late-1990s small-business look (cream page, navy headers, maroon accents, beveled buttons, hub-style section links). No build step required on the VPS.

## Files

- `index.html` — full page (also split as `index.part1.html` … `index.part5.html` for Git storage; run `sh build-index.sh` to reassemble)
- `styles.css` — on the live server this is one monolithic file; in this repo it `@import`s `styles-a.css`, `styles-a2.css`, and `styles-b.css`
- `script.js` — copyright year
- `robots.txt`, `sitemap.xml`
- `images/` — favicons (PNG on VPS; SVG also in repo)

## Deploy to VPS

Site files live at `/var/www/qcsmallbusiness` on the server. Caddy serves the site; leave Caddy config alone.

Prefer the **monolithic** `styles.css` from this checkout when deploying:

```bash
# If using split CSS in git, assemble a single stylesheet for production:
cat styles-a.css styles-a2.css styles-b.css > styles.css

# Assemble index if needed:
sh build-index.sh

scp -i ~/.ssh/masonsblog/id_ed25519 -r \
  index.html styles.css script.js robots.txt sitemap.xml images \
  marty@178.105.31.186:/var/www/qcsmallbusiness/
```

Confirm:

```bash
curl -sI https://qcsmallbusiness.com/ | head -5
curl -sI https://masonsblog.com/ | head -5
```

## Contact

mailto:support@qcsmallbusiness.com
