#!/bin/sh
set -eu

if [ "${1:-}" != "--accept-noncommercial" ]; then
    cat >&2 <<'EOF'
PennSound recordings in this manifest are available for noncommercial
and educational use only, with author/estate rights retained.

Re-run as:
    sh scripts/fetch-pennsound-noncommercial.sh --accept-noncommercial
EOF
    exit 2
fi

mkdir -p     audio/noncommercial/pennsound/tape-poems     audio/noncommercial/pennsound/carnivocal     audio/noncommercial/pennsound/adachi

fetch() {
    url=$1
    out=$2

    if [ -s "$out" ]; then
        printf 'keep %s\n' "$out"
        return
    fi

    printf 'fetch %s\n' "$out"
    curl --fail --location --retry 3 --output "$out" "$url"
}

fetch 'https://media.sas.upenn.edu/pennsound/groups/Tape-Poems-1969-Costa-Perreault/Tape-Poems_Costa-Perreault_1969_3.mp3'     'audio/noncommercial/pennsound/tape-poems/adding-minutes.mp3'

fetch 'https://media.sas.upenn.edu/pennsound/groups/Tape-Poems-1969-Costa-Perreault/Tape-Poems_Costa-Perreault_1969_17-Helium-and-Krypton.mp3'     'audio/noncommercial/pennsound/tape-poems/helium-and-krypton.mp3'

fetch 'https://media.sas.upenn.edu/pennsound/groups/Tape-Poems-1969-Costa-Perreault/Tape-Poems_Costa-Perreault_1969_18-The-Sound-of-an-Object-Part-1.mp3'     'audio/noncommercial/pennsound/tape-poems/object-a-b.mp3'

fetch 'https://media.sas.upenn.edu/pennsound/groups/Tape-Poems-1969-Costa-Perreault/Tape-Poems_Costa-Perreault_1969_19-The-Sound-of-an-Object-Part-2.mp3'     'audio/noncommercial/pennsound/tape-poems/object-b-c.mp3'

fetch 'https://media.sas.upenn.edu/pennsound/groups/Tape-Poems-1969-Costa-Perreault/Tape-Poems_Costa-Perreault_1969_20-The-Sound-of-an-Object-Part-3.mp3'     'audio/noncommercial/pennsound/tape-poems/object-c-d.mp3'

fetch 'https://media.sas.upenn.edu/pennsound/groups/Tape-Poems-1969-Costa-Perreault/Tape-Poems_Costa-Perreault_1969_21-Speed-Racer.mp3'     'audio/noncommercial/pennsound/tape-poems/speed-racer.mp3'

fetch 'https://media.sas.upenn.edu/pennsound/authors/Bok/Carnivocal/Bok-Christian_18_Motorized-Razors_Carnivocal_1999.mp3'     'audio/noncommercial/pennsound/carnivocal/motorized-razors.mp3'

fetch 'https://media.sas.upenn.edu/pennsound/groups/Edit/Kennedy-Adachi_02-18-2010/Adachi-Tomomi_02_Face-For-Voice-And-Gesture_EDIT_KWH-UPenn_02-18-2010.mp3'     'audio/noncommercial/pennsound/adachi/face-for-voice-and-gesture.mp3'

fetch 'https://media.sas.upenn.edu/pennsound/groups/Edit/Kennedy-Adachi_02-18-2010/Adachi-Tomomi_09_Voice-And-Infrared-Shirt_EDIT_KWH-UPenn_02-18-2010.mp3'     'audio/noncommercial/pennsound/adachi/voice-and-infrared-sensor-shirt.mp3'

sha256sum audio/noncommercial/pennsound/*/*.mp3     > audio/noncommercial/pennsound/CHECKSUMS.sha256
