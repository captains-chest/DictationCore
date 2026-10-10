# DictationCore

Shared pure Swift logic for offline dictation applications.

This package contains the platform-agnostic core used by [yet-another-dictator](https://github.com/captainDuckay/yet-another-dictator) (macOS) and its iOS counterpart.

## What is included

- `DictationController`: state machine for recording → transcription → insertion, with tap/hold semantics
- Ports: `AudioRecording`, `Transcribing`, `TextInserting`
- Transcript processing: `TranscriptCleaner`, `SmartJoin` (spacing & capitalization), punctuation prompt
- Speech activity detection, timing, undo support, language selection

The core has no third-party dependencies and no platform-specific UI or system APIs.

## Usage

Add as a dependency in your Package.swift or Xcode project:

```swift
.package(url: "https://github.com/captains-chest/DictationCore.git", from: "0.1.0")
```

Then implement the ports for your platform (microphone, WhisperKit or other transcriber, text insertion via keystrokes or `UITextDocumentProxy`).

## License

MIT
