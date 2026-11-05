# Guitar Master 2.0 — Smart Practice & Game Modes (v1.2)

## Product objective
Prevent beginner fatigue when one lesson or song section takes too long. Replace long repetitive sessions with short, varied activities.

## Three game modes
- EASY: fewer rounds, slower pace where applicable, visible hints, no harsh failure penalty.
- NORMAL: balanced rounds and hints.
- CHALLENGE: more rounds, higher speed/complexity where supported, reduced hints, optional high-score target.

## Smart Practice — 5-minute beginner session
1. Quick recall (about 1 minute): retrieve a recently learned concept.
2. Mini-game (about 1 minute): visual interactive reinforcement.
3. Guided instrument practice (about 2 minutes): one tiny real-guitar task.
4. Song/application (about 1 minute): apply the skill in a short chord/rhythm fragment.

The app should adapt suggestions based on recent mistakes and successes. Offer easier variants after repeated difficulty; never lock the learner's entire path. A learner may pause, skip, or return later.

## Result feedback
Show accuracy/attempts where meaningful, skill improved, one concrete next tip, and recommended next activity. Avoid presenting score as the only measure.

## UX visual direction
Dark charcoal/navy music studio aesthetic; amber/orange primary action; subtle violet/cyan accents; restrained waveform, fretboard, string and rhythm motifs; legible Vietnamese text; 48dp minimum touch targets.

## Implementation boundary
This is product/UI direction. Android implementation remains native Kotlin + Compose. Do not use WebView, external image links, fake audio recognition, or unrelated architecture refactors.
