# PennSound noncommercial sound map

PennSound is a useful source for voice, tape, sound-poetry, performance, and signal-processing test material, but it is **not an unrestricted public-domain corpus**.

PennSound's own rights notes say the recordings are downloadable/distributable for **noncommercial and educational use**, while rights remain with the authors or estates. Keep that boundary explicit.

## High-value test material

```text
PennSound
├── tape as medium
│   └── Tape Poems (1969)
│       ├── very short spoken/tape pieces
│       ├── Hannah Weiner: motion / object / speed pieces
│       └── useful transients, silence, voice, tape noise
│
├── sound poetry
│   └── Carnivocal
│       └── Christian Bök: Motorized Razors
│
├── voice + gesture / sensor performance
│   └── EDIT Series
│       └── Tomomi Adachi
│           ├── Face for Voice and Gesture
│           └── Voice and Infrared Sensor Shirt
│
└── historical / literary voice
    └── large author archive
        └── rights must still be checked per recording
```

## Seed set

The machine-readable version is `manifests/pennsound.tsv`.

### Tape Poems

Source:
https://writing.upenn.edu/pennsound/x/Tape-Poems.php

Good short fixtures:

- Scott Burton — *Adding Minutes* — 0:13
- Hannah Weiner — *Helium and Krypton* — 1:06
- Hannah Weiner — *The Sound of an Object in One-Dimensional Motion Along a Line from A to B* — 0:41
- same, B to C — 0:42
- same, C to D — 0:39
- Hannah Weiner — *Speed Racer* — 1:00

These are unusually useful because they are short and intentionally tape-native rather than ordinary clean speech.

### Carnivocal

Source:
https://writing.upenn.edu/pennsound/x/Carnivocal.php

- Christian Bök — *Motorized Razors* — 1:05

### Tomomi Adachi / EDIT

Source:
https://writing.upenn.edu/pennsound/x/Edit.php

- *Face for Voice and Gesture* — 4:16
- *Voice and Infrared Sensor Shirt* — 6:19

These broaden the corpus from recitation into extended voice/noise/gesture and sensor-mediated performance.

## Repository policy

Do **not** mix these files into `audio/original/`, whose contents are meant to be reusable under public-domain or explicitly open licenses.

Instead:

- metadata and source URLs are committed;
- `scripts/fetch-pennsound-noncommercial.sh --accept-noncommercial` fetches local copies;
- downloads land in ignored `audio/noncommercial/pennsound/`;
- consumers that use them must preserve PennSound's noncommercial/educational restriction and author/estate rights.
