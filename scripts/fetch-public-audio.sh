#!/bin/sh
set -eu

mkdir -p audio/original

fetch() {
  url=$1
  out=$2
  echo "fetch $out"
  curl --fail --location --retry 3 --output "$out" "$url"
}

fetch "https://upload.wikimedia.org/wikipedia/commons/e/e7/Thunder_and_rain_on_a_v.ogg" \
  "audio/original/thunder_and_rain_on_a_veranda.ogg"

fetch "https://www.pmel.noaa.gov/acoustics/sounds/HarmonicTremor2006_215_09_20UsedOnBloopWebsite.wav" \
  "audio/original/noaa_iceberg_harmonic_tremor.wav"

fetch "https://upload.wikimedia.org/wikipedia/commons/c/c3/Antonin_Dvorak_-_symphony_no._9_in_e_minor_%27from_the_new_world%27%2C_op._95_-_ii._largo.ogg" \
  "audio/original/dvorak_new_world_ii_largo.ogg"

fetch "https://upload.wikimedia.org/wikipedia/commons/1/1c/Bartok_-_Sonatina.ogg" \
  "audio/original/bartok_sonatina.ogg"

fetch "https://archive.org/download/russolo-luigi-corale-serenata-1921/Russolo-Luigi_08_Corale-1921.mp3" \
  "audio/original/russolo_corale_1921.mp3"

fetch "https://archive.org/download/russolo-luigi-corale-serenata-1921/Russolo-Luigi_09_Serenata%2C-1921.mp3" \
  "audio/original/russolo_serenata_1921.mp3"

printf '%s  %s\n' \
  "9854ac50a6645c6f4947464ae16b3b587980a18d" \
  "audio/original/thunder_and_rain_on_a_veranda.ogg" \
  "88f4ba157183fc1f1f27fcbb8ffe10c1691d9824" \
  "audio/original/dvorak_new_world_ii_largo.ogg" \
  "a6b3b28925339e2f5aab188e030c14ca8b4e2682" \
  "audio/original/bartok_sonatina.ogg" > CHECKSUMS.sha1

sha1sum -c CHECKSUMS.sha1
sha256sum audio/original/* > CHECKSUMS.sha256
