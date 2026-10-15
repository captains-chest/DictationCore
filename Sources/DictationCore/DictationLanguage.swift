/// The language Whisper should transcribe. Automatic detection is unreliable for short clips, so a
/// fixed language can be chosen. Dictator is English-only: Danish is not offered.
public enum DictationLanguage: String, CaseIterable, Codable, Sendable {
    case automatic
    case english

    /// Whisper's language code, or nil to detect it from the audio.
    public var whisperCode: String? {
        switch self {
        case .automatic: nil
        case .english: "en"
        }
    }

    /// Shown in Settings.
    public var displayName: String {
        switch self {
        case .automatic: "Automatic"
        case .english: "English"
        }
    }

    /// Reads a stored value, falling back to automatic for anything unknown (including the removed
    /// `danish` case).
    public init(storedValue: String?) {
        self = storedValue.flatMap(Self.init(rawValue:)) ?? .automatic
    }
}
