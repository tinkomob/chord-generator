# Chord Generator

Max for Live MIDI Generator for Ableton Live 12's clip editor Generate tab.

## Install

Copy `Chord Generator.amxd`, `chord_generator.js`, `chord_progressions.js`, `chord_select.js`, and `chord_action.js` together into your Ableton User Library/MIDI Tools/Max Generators folder. Switch to another generator and back to reload. Max for Live is required.

The main page follows Live's root and scale, supports Start, Size, Segments, Density, Octave, signed Strum, Motion, Velo, Voice, and Length. Generate rolls a phrase; parameter edits retain its seed.

Progressions opens a library of 3,844 prepared MIDI progressions. Ten formula buttons are shown at once. The dice refreshes the set. Find filters as you type; clearing restores the previous set. Back changes only the page. Prepared progressions adapt to Live's scale and Start and support Strum, Motion, Velo, Voice, and Length. Other main-page controls are not all applied to prepared MIDI.

## Progression sources and rights

- [ldrolez/free-midi-chords](https://github.com/ldrolez/free-midi-chords): 195 baseline C-key progressions from free-midi-progressions-20260914.zip. MIT license in chord-progressions-LICENSE.txt.
- [BenLeon2001/Free-Chord-Progressions](https://github.com/BenLeon2001/Free-Chord-Progressions): 3,649 additional progressions. The author's README permits royalty-free personal/commercial use without attribution; the source README is preserved in progression-sources/BenLeon2001-README.md. This is not presented as an MIT license.

`chord_progressions.js` contains the complete imported bank with per-entry source paths and note events. `progression-sources/` contains the original ZIP packs, including other keys and rhythm variants. Single-chord files and exact transposed duplicates are excluded from the active library. Original source formulas can change when adapted to Live's current scale and Start.

## Development

- Edit the matching .maxpat and embedded .amxd patch together. Preserve the native Ableton container header and patch length.
- Run `node check-chords.cjs` from this directory.
- Rebuild the bank with `python build-progression-bank.py` from this directory (Python 3, standard library only). If the bank changes, update the preset enum and .amxd/.maxpat metadata as well.
- Read AGENTS.md for MIDI Tool protocol, viewport, and UI alignment constraints.

Automated tests cover the bank, scale adaptation, ranges, Start bass, parameter transformations, navigation, selectors, and search. Live UI and selected generation scenarios were checked during development; this is not comprehensive verification of every preset or Live version. Verify on a disposable clip with Auto on/off before using it in a project.

No project-wide license is granted here; third-party progression rights are documented above.
