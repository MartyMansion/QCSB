# QC Small Business (QCSB)

Static marketing site for **QC Small Business** — hands-on IT support for independent brick-and-mortar shops in the Quad Cities (Iowa & Illinois).

**Live:** https://qcsmallbusiness.com/

## Stack

Plain HTML, CSS, and a tiny JS file. Grounded mid/late-1990s small-business look (cream page, navy headers, maroon accents, beveled buttons, hub-style section links). No build step.

## Files

- `index.html` — full page
- `styles.css` — layout and period styling
- `script.js` — copyright year
- `robots.txt`, `sitemap.xml`
- `images/` — favicons

## Deploy to VPS

Site files live at `/var/www/qcsmallbusiness` on the server. Caddy serves the site; leave Caddy config alone.

```bash
rsync -avz --delete \
  --exclude '.git' \
  --exclude 'README.md' \
  -e "ssh -i ~/.ssh/masonsblog/id_ed25519" \
  ./ marty@178.105.31.186:/var/www/qcsmallbusiness/
```

Confirm:

```bash
curl -sI https://qcsmallbusiness.com/ | head -5
curl -sI https://masonsblog.com/ | head -5
```

## Contact

mailto:support@qcsmallbusiness.com
