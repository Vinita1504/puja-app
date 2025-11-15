import 'package:freezed_annotation/freezed_annotation.dart';

part 'temple.freezed.dart';

/// Temple entity (Domain layer)
///
/// Represents a temple location with its details.
/// Pure business logic, no dependencies on external frameworks.
@freezed
class TempleEntity with _$TempleEntity {
  const factory TempleEntity({
    /// Unique identifier for the temple, auto-generated using UUID
    required String id,

    /// Name of the temple as it appears in the application
    required String name,

    /// City where the temple is located
    required String city,

    /// State or province where the temple is located
    required String state,

    /// Country where the temple is located
    required String country,

    /// Optional detailed street address of the temple location
    String? address,

    /// Optional general overview or introduction about the temple
    String? overview,

    /// Optional historical background and significance of the temple
    String? history,

    /// Optional information about the religious or cultural significance
    String? significance,

    /// Optional description of the temple's architectural style and features
    String? architecture,

    /// Optional text describing what offerings are available or accepted
    String? offeringsText,

    /// Optional latitude coordinate for mapping and location services
    double? lat,

    /// Optional longitude coordinate for mapping and location services
    double? lng,

    /// Timestamp when the temple record was created
    required DateTime createdAt,

    /// Timestamp when the temple record was last updated
    required DateTime updatedAt,
  }) = _TempleEntity;
}

