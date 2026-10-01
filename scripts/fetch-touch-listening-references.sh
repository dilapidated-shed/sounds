#!/bin/sh
set -eu

if [ "${1:-}" != "--personal-listening" ]; then
    cat >&2 <<'EOF'
These Touch Radio streams are copyrighted listening references.
This script downloads from Touch's own public stream URLs into an ignored
local directory. Do not commit or redistribute the downloaded MP3s.

Re-run as:
    sh scripts/fetch-touch-listening-references.sh --personal-listening
EOF
    exit 2
fi

mkdir -p reference-only/downloads

curl --fail --location --retry 3     --output reference-only/downloads/touch-radio-49-chris-watson-a-journey-south.mp3     'https://touchradio.org.uk/touchradio/Radio49.mp3'

curl --fail --location --retry 3     --output reference-only/downloads/touch-radio-33-aer-without-number.mp3     'https://touchradio.org.uk/touchradio/Radio33.mp3'
