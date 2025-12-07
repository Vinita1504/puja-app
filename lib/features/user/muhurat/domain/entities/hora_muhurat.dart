/// Hora Muhurat entity
///
/// Represents a single Hora time slot with benefits and lucky gem.
class HoraMuhurat {
  /// Start time of the hora
  final String start;

  /// End time of the hora
  final String end;

  /// Name of the hora (planet name: Venus, Mercury, Moon, etc.)
  final String hora;

  /// Benefits of this hora period
  final String benefits;

  /// Lucky gemstone for this hora
  final String luckyGem;

  const HoraMuhurat({
    required this.start,
    required this.end,
    required this.hora,
    required this.benefits,
    required this.luckyGem,
  });

  HoraMuhurat copyWith({
    String? start,
    String? end,
    String? hora,
    String? benefits,
    String? luckyGem,
  }) {
    return HoraMuhurat(
      start: start ?? this.start,
      end: end ?? this.end,
      hora: hora ?? this.hora,
      benefits: benefits ?? this.benefits,
      luckyGem: luckyGem ?? this.luckyGem,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HoraMuhurat &&
        other.start == start &&
        other.end == end &&
        other.hora == hora &&
        other.benefits == benefits &&
        other.luckyGem == luckyGem;
  }

  @override
  int get hashCode {
    return start.hashCode ^
        end.hashCode ^
        hora.hashCode ^
        benefits.hashCode ^
        luckyGem.hashCode;
  }
}

