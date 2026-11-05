# Performance Evaluation Blueprint — v1.0

## Decisions locked by Product Owner
- Phone microphone is the primary/default input for real-guitar performance assessment.
- Theory is assessed through interactive knowledge tasks.
- Learners may continue the learning path when a skill is not achieved. Record the gap and assign targeted supplementary practice.
- Do not require MIDI/pickup or external sensors.
- Do not claim that microphone audio proves exact left-hand fret/finger placement or exact picking finger.

## Assessment pipeline
1. Exercise Definition: objective, reference events, instructions, measurable criteria, tolerances, and remediation mapping.
2. Input Quality Gate: microphone permission, signal level, clipping/noise checks, device guidance.
3. Audio Evaluation Engine: analyze only measurable properties supported by the current implementation.
4. Confidence Gate: high confidence = score; low confidence = retry; unusable input = no pass/fail result.
5. Performance Scoring: exercise-specific scoring, not one universal formula.
6. Feedback & Remediation: identify the weak event/section and suggest a targeted exercise.
7. Skill Mastery Tracking: retain evidence over repeated attempts and later retention checks.

## Skill states
- Learned: content consumed.
- Practiced: learner attempted the instrument task.
- Achieved: measurable criteria met.
- Mastered: stable performance across multiple attempts and application contexts.
- Retained/applied may be tracked as additional evidence dimensions.

## Song performance
A song definition should include sections (Intro/Verse/Chorus/Outro), expected chord/note events, tab references, timing, BPM, rhythm, techniques, section boundaries, scoring criteria and allowed tolerances. Support section practice and whole-song performance. Report per-section results and whole-piece summary. Never fail the whole song without locating the weak section where evidence allows.

## Honest capability boundary
Microphone may support pitch/note, onset/timing, rhythm, duration, continuity and constrained chord/event recognition, depending on recording quality and algorithm validation. It cannot reliably infer exact finger placement or fretboard position from audio alone. Do not score unobservable physical technique. If signal quality or model confidence is insufficient, ask for another attempt rather than assigning zero.

## Prototype status
The microphone level meter in this HTML prototype only confirms that an audio signal is present. It does not recognize guitar notes, evaluate chords, calculate skill accuracy or grade a performance. The sample section scores are illustrative UI data and are explicitly marked Demo.
