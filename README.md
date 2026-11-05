# Lōkahi website (lokahi.cz)

Hosted on Netlify and deployed from the `main` branch of this repo.
Only the `site/` folder is published; `netlify.toml` sets that.

| Folder     | What it is                                                                 | Published |
|------------|----------------------------------------------------------------------------|-----------|
| `site/`    | The website, exactly as served on lokahi.cz                                | Yes       |
| `drafts/`  | "Věci, které milujeme" articles not yet published, and the hub page with their cards | No |
| `docs/`    | Content briefs (.docx)                                                     | No        |
| `archive/` | Old homepage draft (`lokahi-6.html`)                                       | No        |

## Changing the site

Edit files in `site/`, then commit and push to `main`. Netlify deploys it
automatically. Don't upload files to Netlify by hand: that is how the live
site and this repo got out of sync before.

## Publishing a draft article

1. Move the article folder from `drafts/veci-ktere-milujeme/` to
   `site/veci-ktere-milujeme/`, and its photo (if any) from
   `drafts/assets/img/` to `site/assets/img/`.
2. Add its card to `site/veci-ktere-milujeme/index.html`. The card markup is
   ready in `drafts/veci-ktere-milujeme/index.html`.
3. Optionally feature it in the "Věci, které milujeme" cards on
   `site/index.html`.
4. Commit and push to `main`.
