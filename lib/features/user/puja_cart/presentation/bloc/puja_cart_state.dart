import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../puja/domain/entities/puja.dart';
import '../../../puja/domain/entities/puja_package.dart';
import '../../../chadhava/domain/entities/chadhava_offering.dart';

part 'puja_cart_state.freezed.dart';

/// Puja cart state
@freezed
class PujaCartState with _$PujaCartState {
  /// Initial state
  const factory PujaCartState.initial() = _Initial;

  /// Loading state
  const factory PujaCartState.loading() = _Loading;

  /// Loaded state with cart data
  const factory PujaCartState.loaded({
    required PujaEntity puja,
    required PujaPackageEntity package,
    required List<ChadhavaOfferingEntity> offerings,
    @Default([]) List<ChadhavaOfferingEntity> selectedOfferings,
  }) = _Loaded;

  /// Error state
  const factory PujaCartState.error({required String message}) = _Error;
}

