import 'package:freezed_annotation/freezed_annotation.dart';

part 'puja_details_event.freezed.dart';

/// Puja details events
@freezed
class PujaDetailsEvent with _$PujaDetailsEvent {
  /// Load puja details by ID
  const factory PujaDetailsEvent.pujaDetailsLoaded({required String pujaId}) =
      PujaDetailsLoaded;

  /// Select a package (Basic/Standard/Premium)
  const factory PujaDetailsEvent.packageSelected({
    required String packageName,
  }) = PackageSelected;

  /// Toggle FAQ item expansion
  const factory PujaDetailsEvent.faqItemToggled({required int index}) =
      FaqItemToggled;

  /// Change active tab (for scroll navigation)
  const factory PujaDetailsEvent.tabChanged({required int index}) = TabChanged;

  /// Update carousel image index
  const factory PujaDetailsEvent.carouselImageChanged({required int index}) =
      CarouselImageChanged;

  /// Update scroll position (for active tab detection)
  const factory PujaDetailsEvent.scrollPositionChanged({
    required double offset,
  }) = ScrollPositionChanged;
}
