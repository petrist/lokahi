#!/bin/sh
# Renders the flyer (PDF + PNG) and the Instagram graphics (PNG) into out/.
# Needs Google Chrome. Run from anywhere:  sh marketing/vanocni-vecirky/render.sh
set -e
cd "$(dirname "$0")"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
DIR="$(pwd)"
mkdir -p out

shot() { # url width height scale output
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --allow-file-access-from-files \
    --virtual-time-budget=4000 --window-size="$2,$3" --force-device-scale-factor="$4" \
    --screenshot="$DIR/out/$5" "file://$DIR/$1" >/dev/null 2>&1
  echo "out/$5"
}
pdf() { # url output
  "$CHROME" --headless=new --disable-gpu --allow-file-access-from-files --virtual-time-budget=4000 \
    --no-pdf-header-footer --print-to-pdf="$DIR/out/$2" "file://$DIR/$1" >/dev/null 2>&1
  echo "out/$2"
}

# Flyer A5: plain PDF (screen, e-mail), print-shop PDF with 3 mm bleed, PNG preview
pdf  "flyer.html"         "lokahi-vanocni-vecirek-A5.pdf"
pdf  "flyer.html?bleed=1" "lokahi-vanocni-vecirek-A5-tisk-spadavka-3mm.pdf"
shot "flyer.html" 560 794 2 "lokahi-vanocni-vecirek-A5.png"

# Instagram: 4:5 feed carousel and 9:16 stories
if [ -f instagram.html ]; then
  for s in 1 2 3 4; do shot "instagram.html?s=post-$s" 1080 1350 1 "ig-post-$s.png"; done
  for s in 1 2 3;   do shot "instagram.html?s=story-$s" 1080 1920 1 "ig-story-$s.png"; done
fi
