# Changelog

## 0.2.0

- **Breaking:** `DictationController.textBeforeCursor` (a mutable optional closure) is replaced by a
  fourth port, `PrecedingTextReading`, passed to `init(precedingText:)`. Return nil when the field
  can't be read; the controller still falls back to its own dictation history. No behaviour change.

## 0.1.0

- First release, extracted from yet-another-dictator.
