/// Choghadiya Muhurat entity
///
/// Represents a single Choghadiya time slot with its type and timing.
class ChoghadiyaMuhurat {
  /// Start time of the muhurat
  final String start;

  /// End time of the muhurat
  final String end;

  /// Name of the muhurat (e.g., Chal, Labh, Amrit, etc.)
  final String muhurat;

  /// Type of muhurat (Good, Auspicious, Inauspicious)
  final String type;

  const ChoghadiyaMuhurat({
    required this.start,
    required this.end,
    required this.muhurat,
    required this.type,
  });

  ChoghadiyaMuhurat copyWith({
    String? start,
    String? end,
    String? muhurat,
    String? type,
  }) {
    return ChoghadiyaMuhurat(
      start: start ?? this.start,
      end: end ?? this.end,
      muhurat: muhurat ?? this.muhurat,
      type: type ?? this.type,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChoghadiyaMuhurat &&
        other.start == start &&
        other.end == end &&
        other.muhurat == muhurat &&
        other.type == type;
  }

  @override
  int get hashCode {
    return start.hashCode ^
        end.hashCode ^
        muhurat.hashCode ^
        type.hashCode;
  }
}

