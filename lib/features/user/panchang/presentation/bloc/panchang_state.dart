import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/panchang_entity.dart';

part 'panchang_state.freezed.dart';

/// Panchang state
@freezed
class PanchangState with _$PanchangState {
  /// Initial state
  const factory PanchangState.initial() = _Initial;

  /// Loading state
  const factory PanchangState.loading() = _Loading;

  /// Loaded state with Panchang data
  const factory PanchangState.loaded(PanchangEntity panchang) = _Loaded;

  /// Error state
  const factory PanchangState.error(String message) = _Error;
}

