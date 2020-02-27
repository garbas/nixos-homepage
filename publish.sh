#!/usr/bin/env nix-shell
#!nix-shell -i bash -p nodejs

npm install netlify-cli

RESULT=$(./node_modules/.bin/netlify deploy --json --auth $NETLIFY_AUTH_TOKEN --site $NETLIFY_SITE_ID --dir ./result/ --prod | tee /dev/tty)

