#!/usr/bin/env bash
set -euo pipefail

export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"
export BUNDLE_PATH="${HOME}/.bundle/nowiley-github-pages-ruby31"

exec bundle exec jekyll serve --livereload --host 127.0.0.1