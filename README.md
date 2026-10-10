# DictationCore

Shared pure Swift logic for offline dictation applications.

This package contains the platform-agnostic core used by [yet-another-dictator](https://github.com/captainDuckay/yet-another-dictator) (macOS) and its iOS counterpart.

## What is included

- `DictationController`: state machine for recording → transcription → insertion, with tap/hold semantics
- Ports: `AudioRecording`, `Transcribing`, `TextInserting`
- Transcript processing: `TranscriptCleaner`, `SmartJoin` (spacing & capitalization), punctuation prompt
- Speech activity detection, timing, undo support (`DictationHistory`), language selection
- Audio capture buffering: `CaptureBuffer` (pre-roll, 10-minute capacity), `AudioRingBuffer`
- Text insertion helpers: `TextChunker`; shortcut model: `Shortcut`, `Chord`, `KeyLabels`
- App versioning: `AppVersion`, changelog parsing and What's New decisions, update-check selection

Platforms: macOS 15+, iOS 18+ (`CaptureBuffer` uses `Synchronization.Mutex`). Swift 6.2 tools,
strict concurrency. Also builds and tests on Linux.

`TextInserting.insert` and `deleteBackward` are `async throws` and should stop between chunks when
the task is cancelled (throwing `CancellationError`).

The core has no third-party dependencies and no platform-specific UI or system APIs.

## Usage

Add as a dependency in your Package.swift or Xcode project:

```swift
.package(url: "https://github.com/captains-chest/DictationCore.git", exact: "0.1.0")
```

Then implement the ports for your platform (microphone, WhisperKit or other transcriber, text insertion via keystrokes or `UITextDocumentProxy`).

## License

MIT © 2026 Nicki Skipper Otte. See [LICENSE](LICENSE). No third-party code.
