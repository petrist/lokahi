# Vánoční večírky pro firmy (Vánoce 2026)

Materiály ke kampani. Stránka je na webu od 15. 11. 2026: https://www.lokahi.cz/vanocni-vecirky/ (zdroj `site/vanocni-vecirky/`), odkaz na ni je v menu úvodní stránky („Večírky“) a v tmavém pruhu `#vecirky` (po Vánocích odstranit).

| Soubor | K čemu |
|---|---|
| `out/lokahi-vanocni-vecirek-A5.pdf` | Leták A5 na obrazovku a jako příloha e-mailu |
| `out/lokahi-vanocni-vecirek-A5-tisk-spadavka-3mm.pdf` | Leták pro tiskárnu, se spadávkou 3 mm (154 × 216 mm) |
| `out/lokahi-vanocni-vecirek-A5.png` | Leták jako obrázek (do e-mailu, na web, do zpráv) |
| `out/ig-post-1…4.png` | Instagram carousel 4:5 |
| `out/ig-story-1…3.png` | Instagram stories 9:16 |
| `email.md` | Text nabídkového e-mailu a připomínky |
| `instagram-texty.md` | Popisky, nálepky do stories, další příspěvky a plán kampaně |
| `img/` | Fotky pro leták a Instagram (stejné jako na webu, bez metadat) |
| `flyer.html`, `instagram.html` | Zdroje grafik: tady se mění text |
| `render.sh` | Znovu vygeneruje všechno v `out/` (potřebuje Google Chrome) |

## Jak změnit text nebo cenu

1. Upravte `flyer.html` nebo `instagram.html`.
2. Spusťte `sh marketing/vanocni-vecirky/render.sh`.
3. Stejnou změnu udělejte i na stránce `site/vanocni-vecirky/index.html`, v pruhu `#vecirky` na `site/index.html` a v `email.md`.

Písmo Jost (bezpatkové) nemá správný znak ō. Název **Lōkahi** proto pište jen patkovým písmem (Cormorant) a v bezpatkovém textu ho přeformulujte.

## Potvrzeno (15. 11. 2026)

- Ceny jsou bez DPH, fakturujeme na firmu. Veřejně jen „od 990 Kč za osobu a večer*“.
- Záloha 30 %.
- Konečný počet hostů stačí potvrdit den předem.
- Večírky každý den v prosinci, 19:00–24:00.
- Vegetariánskou variantu připravíme (bezlepkovou nenabízíme).

## Ještě chybí

- [ ] Volitelně: vlastní fotka prostřeného stolu pro skupinu, večer. Zatím je v sekci Prostor a na posledním obrázku carouselu večerní interiér z archivu (`Pics/Kuba Mix/IMG_6045.HEIC`).
- [ ] Interně: ceny setupů (nealko, alko, free flow) a minimum hostů, abyste mohli posílat nabídky. Na web nepatří.
- [ ] Volitelně: storno podmínky.

## Stav po zveřejnění (15. 11. 2026)

- Netlify nasazuje z větve `main` (do 15. 11. byla produkční větev `production`, proto se změny z `main` na web nedostávaly). Větev `production` na GitHubu zůstala jen jako záloha.
- Formuláře jsou zapnuté, formulář `vanocni-vecirek` Netlify našel a zkušební poptávka prošla. Upozornění chodí na reservations@lokahi.cz až po potvrzení odkazu v e-mailu od Netlify. Zkušební poptávku (firma „TEST – zkušební poptávka“) můžete v Netlify → Forms smazat.
- Po Vánocích odstraňte pruh `#vecirky` a položku „Večírky“ z menu na `site/index.html`.
