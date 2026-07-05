# Verasoft Site — Setup Guide

Your Squarespace site, rebuilt as a free static website. Once live on GitHub Pages, your only ongoing cost is the domain registration (~$20/year). No more monthly Squarespace fees.

## Step 1 — Get your images (do this BEFORE canceling Squarespace)

Open Terminal, drag the `verasoft-site` folder path in, and run:

```bash
cd /path/to/verasoft-site
bash get-images.sh
```

This downloads your 13 images from Squarespace's CDN into `assets/`. Verify each file opens. (If any fail, right-click → Save Image on your live site instead, using the same filenames.)

## Step 2 — Set up the forms (Formspree, free)

1. Go to https://formspree.io and sign up with manan@verasoftglobal.com (free plan: 50 submissions/month).
2. Create a new form — Formspree gives you an ID like `xabcdefg`.
3. In these 3 files, already done — form ID xwvdyrwo is wired in:
   - `index.html`
   - `contact/index.html`
   - `request-sample/index.html`
4. Submissions will arrive in your email inbox.

Tip: you can create two separate forms (one "Contact", one "Sample Request") so they're labeled differently in your inbox.

## Step 3 — Preview locally

```bash
cd /path/to/verasoft-site
python3 -m http.server 8000
```

Open http://localhost:8000 in your browser and click through every page.

## Step 4 — Publish on GitHub Pages

1. Create a free account at https://github.com (if you don't have one).
2. Create a new **public** repository named e.g. `verasoft-site`.
3. Upload the entire contents of this folder (on the repo page: "uploading an existing file" link — drag everything in, including the `CNAME` file).
4. Go to repo **Settings → Pages** → Source: "Deploy from a branch" → Branch: `main`, folder `/ (root)` → Save.
5. Within a minute your site is live at `https://<your-username>.github.io/verasoft-site/`.

## Step 5 — Point www.verasoftglobal.com at it

You keep your domain (registered via Squarespace Domains or elsewhere) — you only cancel the *website* subscription.

In your domain's DNS settings:

1. Add a **CNAME record**: host `www` → value `<your-username>.github.io`
2. For the bare domain (verasoftglobal.com), add **A records** pointing to GitHub Pages:
   - 185.199.108.153
   - 185.199.109.153
   - 185.199.110.153
   - 185.199.111.153
3. In GitHub: Settings → Pages → Custom domain: enter `www.verasoftglobal.com` → Save → tick **Enforce HTTPS** (appears after DNS propagates, up to 24h).

The included `CNAME` file tells GitHub Pages your domain — don't delete it.

## Step 6 — Cancel Squarespace

Only after: images downloaded (Step 1), site live and verified on your domain (Step 5). If your domain is registered through Squarespace, keep the **domain** subscription (or transfer it to Cloudflare/Namecheap for cheaper renewal) — cancel only the **website** plan.

## Editing the site later

Each page is plain HTML in its own folder (`about-us/index.html`, etc.). Edit text in any text editor, then re-upload the changed file to GitHub — the site updates automatically. Or just ask Claude to make changes for you.

## Notes

- URLs match your current site (`/about-us`, `/verasoft`, etc.), so Google rankings and existing links carry over.
- SEO titles and meta descriptions were copied from your Squarespace pages.
- The cart icon was dropped (the Squarespace store wasn't in use); everything else matches.
