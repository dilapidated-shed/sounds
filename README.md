# sounds

Reusable sound recordings for tests, demos, signal-processing experiments, and other projects.

The repository keeps redistribution rights and provenance next to each recording. Files that are useful references but cannot be redistributed are catalogued under `reference-only/` instead of being copied into `audio/`.

## Corpus

| id | recording | rights |
| --- | --- | --- |
| thunder-rain-veranda | Thunder and rain on a veranda — ezwa/PDSounds | public domain |
| noaa-iceberg-harmonic-tremor | Antarctic iceberg harmonic tremor — NOAA PMEL | U.S. government / public domain in the U.S. |
| dvorak-new-world-largo | Dvořák, Symphony No. 9, II. Largo — Musopen recording via Wikimedia Commons | public-domain dedication |
| bartok-sonatina | Bartók, Sonatina — performed by La Pianista | CC BY-SA 3.0 |
| russolo-corale | Luigi and Antonio Russolo, Corale (1921) | public domain in the U.S. |
| russolo-serenata | Luigi and Antonio Russolo, Serenata (1921) | public domain in the U.S. |
| touch-radio-49-a-journey-south | Chris Watson, A Journey South | reference only; copyrighted |

See `manifest.tsv` and `sources/` for provenance and rights notes.

Run `scripts/fetch-public-audio.sh` to fetch the redistributable originals and verify the Wikimedia SHA-1 values where published.

## Consumer contract

Corpus IDs are the stable names other repositories should use. A consuming project should pin a `sounds` revision and take recording locations, source URLs, rights notes, and fetch behavior from this repository rather than copying its own corpus catalogue.

The recordings remain in their original container formats here. Consumers may derive PCM, clips, spectrograms, or other build artifacts in their own build directories.
