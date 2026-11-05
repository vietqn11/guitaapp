# GUITAR MASTER 2.0 — SCREEN MAP

## Top-level navigation
- Trang chủ: learning continuation, today's practice goal, six module cards, quick tools, guitar tip.
- Học tập: six modules, tips library and song-practice entry.
- Công cụ: tuner, metronome, chord library, capo helper, practice timer, song practice.
- Tiến độ: overall progress, per-module progress, achievements.
- Profile: profile summary, learning preferences and local demo data controls.

## Main user journeys
1. Home → Module → Stage (8-stage path) → Lesson → Practice → Mark complete → Next lesson.
2. Stage → Interstitial mini-game → Game result → Return to stage.
3. Stage → Checkpoint → Result.
4. Home/Tools → Tuner or Metronome or Chord Library.
5. Home/Tools → Song Practice → Chord progression exercise.
6. Home/Learn → Tips Library → Tip detail → Practice Timer.

## Content source mapping
- Five learning modules and 12 seed lessons each: `data/product-content.json`.
- Eight-stage mapping and game assignments: `data/minigame-catalog.json` → `stage_map`.
- Mini-game rules: `data/minigame-catalog.json` → `games`.
- Module 6 Công cụ is a utility hub; it does not have a compulsory learning path.
