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

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Florence_Nightingale_voice_-_1576A_2nd_Rendition.ogg" \
  "audio/original/florence_nightingale_1890_second_rendition.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Ernest_Shackleton-MySouthPolarExpedition.ogg" \
  "audio/original/ernest_shackleton_my_south_polar_expedition.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Walt_Whitman_-_America.ogg" \
  "audio/original/walt_whitman_america.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Aroundworldonphon1888.ogg" \
  "audio/original/thomas_edison_around_world_1888.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/LightBrigade-Tennyson.ogg" \
  "audio/original/alfred_tennyson_light_brigade.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Sigmund_Freud%27s_Voice_%28BBC_Broadcast_Recording_1938%29.ogg" \
  "audio/original/sigmund_freud_bbc_1938.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Theodore_Roosevelt_%22The_liberty_of_the_people%22_speech.ogg" \
  "audio/original/theodore_roosevelt_liberty_people.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Bryan_-_The_Ideal_Republic.ogg" \
  "audio/original/william_jennings_bryan_ideal_republic.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Tolstoy_Vremya_prishlo.ogg" \
  "audio/original/leo_tolstoy_vremya_prishlo.ogg"

fetch "https://commons.wikimedia.org/wiki/Special:Redirect/file/Edison_speech%2C_1920s.ogv" \
  "audio/original/thomas_edison_1920s_speech.ogv"

printf '%s  %s\n' \
  "9854ac50a6645c6f4947464ae16b3b587980a18d" \
  "audio/original/thunder_and_rain_on_a_veranda.ogg" \
  "88f4ba157183fc1f1f27fcbb8ffe10c1691d9824" \
  "audio/original/dvorak_new_world_ii_largo.ogg" \
  "a6b3b28925339e2f5aab188e030c14ca8b4e2682" \
  "audio/original/bartok_sonatina.ogg" \
  "5de570b67b20f4e2932fb960b3e3b0f071981544" \
  "audio/original/florence_nightingale_1890_second_rendition.ogg" \
  "768edd67d7c8fe90c1c08c668a982c6e31368cfa" \
  "audio/original/ernest_shackleton_my_south_polar_expedition.ogg" \
  "7c42f285733f8232cee15dace72ea1142b9dda41" \
  "audio/original/walt_whitman_america.ogg" \
  "4bb3ff56a2fc7b54583c161937c577f1f47b7221" \
  "audio/original/thomas_edison_around_world_1888.ogg" \
  "ee4f3eb46864d3fff563ea0e0c9743543819c4c4" \
  "audio/original/alfred_tennyson_light_brigade.ogg" \
  "eaccbe199d6c30328d5c63527c95898d192a8b58" \
  "audio/original/sigmund_freud_bbc_1938.ogg" \
  "a3706d2e75c749d87934a6c608bd1a5a49fea447" \
  "audio/original/theodore_roosevelt_liberty_people.ogg" \
  "9ae878d5d09eb2e034f74e37075c9c083ddba4ca" \
  "audio/original/william_jennings_bryan_ideal_republic.ogg" \
  "ab7182366dbfdc3ba2604508e474ed5bd2044ebf" \
  "audio/original/leo_tolstoy_vremya_prishlo.ogg" \
  "4a2051dfbed5ae8c884466820c2ac176a3409fa3" \
  "audio/original/thomas_edison_1920s_speech.ogv" > CHECKSUMS.sha1

sha1sum -c CHECKSUMS.sha1
sha256sum audio/original/* > CHECKSUMS.sha256
