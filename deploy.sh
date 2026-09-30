#!/bin/sh
# Publishes Maintenance to ALL its addresses through the HV kit (hv-shared/kit/publish.sh): checks the page, then
# Cloudflare Pages hv-maintenance-system — and maintenance.home-vacation.com once attached — and the GitHub Pages
# backup https://danielessam03.github.io/hv-maintenance-system/. Only index.html + the kit files are published.
set -e
cd "$(dirname "$0")"
sh ../hv-shared/kit/sync.sh .
sh ../hv-shared/kit/publish.sh . "hv-maintenance-system" hv-maintenance-system
