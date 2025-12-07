import 'choghadiya_muhurat.dart';
import 'hora_muhurat.dart';

/// Muhurat Result entity
///
/// Aggregate entity containing complete muhurat data for day and night,
/// including both Choghadiya and Hora muhurats.
class MuhuratResult {
  /// Day Choghadiya muhurats
  final List<ChoghadiyaMuhurat> dayMuhurats;

  /// Night Choghadiya muhurats
  final List<ChoghadiyaMuhurat> nightMuhurats;

  /// Hora muhurats (covers full day and night)
  final List<HoraMuhurat> horas;

  /// Day of the week
  final String dayOfWeek;

  const MuhuratResult({
    required this.dayMuhurats,
    required this.nightMuhurats,
    required this.horas,
    required this.dayOfWeek,
  });

  MuhuratResult copyWith({
    List<ChoghadiyaMuhurat>? dayMuhurats,
    List<ChoghadiyaMuhurat>? nightMuhurats,
    List<HoraMuhurat>? horas,
    String? dayOfWeek,
  }) {
    return MuhuratResult(
      dayMuhurats: dayMuhurats ?? this.dayMuhurats,
      nightMuhurats: nightMuhurats ?? this.nightMuhurats,
      horas: horas ?? this.horas,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MuhuratResult &&
        _listEquals(other.dayMuhurats, dayMuhurats) &&
        _listEquals(other.nightMuhurats, nightMuhurats) &&
        _listEquals(other.horas, horas) &&
        other.dayOfWeek == dayOfWeek;
  }

  @override
  int get hashCode {
    return dayMuhurats.hashCode ^
        nightMuhurats.hashCode ^
        horas.hashCode ^
        dayOfWeek.hashCode;
  }

  bool _listEquals<T>(List<T> list1, List<T> list2) {
    if (list1.length != list2.length) return false;
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) return false;
    }
    return true;
  }
}

