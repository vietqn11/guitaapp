# PROMPT — GUITAR MASTER 2.0 UI HANDOFF TO GOOGLE AI STUDIO

You are implementing the native Android application **Guitar Master 2.0**.

The attached ZIP contains:
- A responsive HTML/CSS/JavaScript UI prototype (`index.html`).
- A product-content catalog (`data/product-content.json`).
- An 18-game design catalog (`data/minigame-catalog.json`).
- CSV lesson/game indexes.
- Local WebP image assets and Android drawable copies.
- Product roadmap, content blueprint and game design specification PDFs.

## CRITICAL PRODUCT DECISION

The HTML prototype is a DESIGN AND INTERACTION REFERENCE ONLY.
The final app remains native Android Kotlin + Jetpack Compose.
Do NOT embed the HTML prototype in WebView.
Do NOT migrate to Capacitor or a web app.

## VISUAL DIRECTION

Use the prototype as the reference:
- Dark charcoal background (#0F0F13).
- Cards (#1A1A20), subtle borders (#2B2B34).
- Warm amber (#F59E0B) and orange (#E67E22) accents.
- Distinct identity colors for the six modules.
- Rounded cards, clear typography, compact mobile layout.
- Use supplied local image assets; never load image URLs at runtime.
- Render technical elements (chord diagrams, fretboard, tuner gauge, progress charts) as real Compose UI, not screenshots.

## PRODUCT STRUCTURE

The app has exactly six top-level modules:
1. Đệm hát
2. Luyện ngón
3. Fingerstyle
4. Nhạc lý
5. Cảm âm
6. Công cụ (utility area, not a compulsory course)

The five learning modules use eight learning stages each. Use `data/minigame-catalog.json` `stage_map` as the 8-stage mapping and `data/product-content.json` as the lesson content source. The HTML prototype may distribute the 12 initial lessons across eight display stages; treat this as a presentation mapping, not a request to invent extra lesson content.

## WORKING RULES

1. Inspect the existing Android project before changing anything.
2. Preserve working business logic, Room schema/migrations, repositories and ViewModels unless a specific approved change requires otherwise.
3. Reuse existing capabilities where they already work.
4. Translate approved screens into Jetpack Compose; do not copy HTML into WebView.
5. Use the JSON/CSV content as source material; do not hardcode contradictory lesson catalogs.
6. Use local drawable assets bundled in the APK. No remote URLs or runtime downloads.
7. Do not fake microphone recognition or guitar-performance accuracy.
8. When a task is practice-by-self-confirmation, label it as self-confirmed; do not report it as audio-measured.
9. Tuner and metronome must be implemented as actual features if included in the implementation scope. Do not use animated mock values as real readings.
10. Do not build all screens and all 18 games in one operation.

## REQUIRED FIRST RESPONSE

Before coding, inspect the source and return:
- Existing screen/navigation inventory.
- Which approved prototype screens already exist.
- Which business/data logic can be reused.
- Which local images are already present or missing.
- A small integration plan with file ownership and UiState/callback boundaries.
- Any conflicts between the existing app and the supplied product design.

Do not modify source files during this inspection.

## IMPLEMENTATION ORDER AFTER APPROVAL

Implement in small vertical slices:
1. Home + six-module dashboard + navigation entry points.
2. Module overview + eight-stage learning path.
3. Standard lesson detail + guided practice flow.
4. Shared mini-game shell and first eight approved games.
5. Tools: tuner, metronome and chord library.
6. Song practice, tips library, progress and profile.
7. Remaining games and content expansion.

After each slice:
- Build the APK.
- Report exact files changed.
- Report what is actually functional vs placeholder.
- Do not claim completion until build and runtime are verified.

## STOP CONDITION

This ZIP does not authorize a full rewrite or database migration. Start with read-only inspection and propose the first small implementation slice for Product Owner approval.

## Bổ sung: Interactive Game Lab
Tham khảo thêm `interactive-game-lab.html`. Đây là mẫu UX cho 5 game thao tác trực quan (drag/drop, fretboard touch, chord placement, rhythm pattern builder, finger reaction pads). Khi chuyển sang Compose, ưu tiên tái tạo **cách tương tác và feedback**, không nhúng WebView. Chuyển từng game thành composable riêng, state rõ ràng, không giả lập microphone/audio recognition.


## V1.2 PRODUCT UX UPDATE — SMART PRACTICE + MUSIC GAME MODES

The updated prototype includes a Smart Practice entry card and game mode selector. Treat these as approved product/UI direction.

Implement natively in Kotlin + Jetpack Compose (not WebView):
1. Add a reusable GameMode model: EASY, NORMAL, CHALLENGE. EASY reduces rounds/complexity and exposes hints; NORMAL is balanced; CHALLENGE increases rounds/speed and removes most hints. Do not merely change labels.
2. Add a Smart Practice flow for beginners: a short 5-minute session that alternates micro-learning, an interactive mini-game, and a real instrument practice task. Break long lessons into short activities. Show step progress, allow pause/exit, and never lock the full learning path after failure.
3. Add adaptive support: repeated errors offer a hint or easier variant; repeated success may suggest the next level. Let the learner choose, do not silently punish or force downgrade.
4. Results should explain what improved and what to practice next, not only show a score.
5. Persist selected game mode and practice progress locally. Do not invent microphone/audio recognition. Clearly label activities requiring real audio input.
6. Preserve the music-inspired dark interface: charcoal/navy base, amber/orange highlights, subtle violet/cyan accents, musical rhythm motifs, clear Vietnamese typography and accessible touch targets.
7. This HTML is a visual/interaction reference, not the source architecture. Keep existing Room/domain/business logic ownership and do not restructure unrelated modules.
