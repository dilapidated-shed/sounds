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
| touch-radio-33-aer-without-number | AER, Without Number | reference only |

See `manifest.tsv` and `sources/` for provenance and rights notes.

### Historical voices

The reusable historical-voice group now includes Florence Nightingale (1890),
Ernest Shackleton (1910), the recording attributed to Walt Whitman (c. 1890),
Thomas Edison (1888 and a later filmed speech), Alfred Tennyson (1890),
Sigmund Freud (1938), Theodore Roosevelt (1912), William Jennings Bryan (1922),
and Leo Tolstoy (1908).

See `sources/historical-voices.md` for exact source pages, dates, attribution
notes, and rights labels. Michel Foucault recordings are catalogued separately
under `reference-only/`; they are not treated as public-domain fixtures.


Run `scripts/fetch-public-audio.sh` to fetch the redistributable originals and verify the Wikimedia SHA-1 values where published.

## Restricted and reference sources

These are intentionally kept separate from the reusable corpus.

### Touch

`reference-only/touch-radio-49-a-journey-south.md` identifies the Antarctic hydrophone recording discussed for Fourier tests. “Touch 33” referred to the Touch label/site; the recording itself is **Touch Radio 49**, Chris Watson's *A Journey South*. Literal Touch Radio 33 is AER's *Without Number* and has its own note.

For local listening only:

```sh
sh scripts/fetch-touch-listening-references.sh --personal-listening
```

The downloaded files are ignored by git.

### PennSound

PennSound allows its recordings to be downloaded/distributed for **noncommercial and educational use**, while author/estate rights remain in force. Those recordings therefore do not belong in `audio/original/`.

See:

- `maps/pennsound-noncommercial.md`
- `manifests/pennsound.tsv`

To fetch the current nine-recording signal-processing seed set locally:

```sh
sh scripts/fetch-pennsound-noncommercial.sh --accept-noncommercial
```

Those downloads are also ignored by git.

## Consumer contract

Corpus IDs are the stable names other repositories should use. A consuming project should pin a `sounds` revision and take recording locations, source URLs, rights notes, and fetch behavior from this repository rather than copying its own corpus catalogue.

The recordings remain in their original container formats here. Consumers may derive PCM, clips, spectrograms, or other build artifacts in their own build directories.
