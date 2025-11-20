import 'package:freezed_annotation/freezed_annotation.dart';
part 'puja_cart_event.freezed.dart';

/// Puja cart events
@freezed
class PujaCartEvent with _$PujaCartEvent {
  /// Load cart with puja and package
  const factory PujaCartEvent.cartLoaded({
    required String pujaId,
    required String packageId,
  }) = CartLoaded;

  /// Fetch available chadhava offerings
  const factory PujaCartEvent.offeringsFetched() = OfferingsFetched;

  /// Add offering to cart
  const factory PujaCartEvent.offeringAdded({
    required String offeringId,
  }) = OfferingAdded;

  /// Remove offering from cart
  const factory PujaCartEvent.offeringRemoved({
    required String offeringId,
  }) = OfferingRemoved;
}

