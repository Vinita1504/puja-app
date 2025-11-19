import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/shared/widgets/faq_section_widget.dart';
import '../bloc/chadhava_details/chadhava_details_bloc.dart';
import '../bloc/chadhava_details/chadhava_details_event.dart';
import '../bloc/chadhava_details/chadhava_details_state.dart';
import '../widgets/chadhava_details_widgets/chadhava_details_header_widget.dart';
import '../widgets/chadhava_details_widgets/chadhava_image_carousel_widget.dart';
import '../widgets/chadhava_details_widgets/chadhava_description_widget.dart';
import '../widgets/chadhava_details_widgets/chadhava_offerings_list_widget.dart';
import '../widgets/chadhava_details_widgets/chadhava_review_section_widget.dart';
import '../../domain/entities/chadhava_offering.dart';

/// Chadhava details page
///
/// Displays detailed information about a chadhava event including
/// images, description, offerings, reviews, and FAQs.
class ChadhavaDetailsPage extends StatelessWidget {
  final String chadhavaId;

  const ChadhavaDetailsPage({super.key, required this.chadhavaId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: ChadhavaDetailsHeaderWidget(
        onBackPressed: () => context.pop(),
        onCartPressed: () {
          // TODO: Implement cart navigation
        },
      ),
      body: BlocBuilder<ChadhavaDetailsBloc, ChadhavaDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded:
                (
                  chadhava,
                  offerings,
                  reviews,
                  faqs,
                  _,
                  expandedFaqIndices,
                  selectedOfferings,
                ) {
                  return Stack(
                    children: [
                      SingleChildScrollView(
                        padding: EdgeInsets.only(
                          bottom: selectedOfferings.isNotEmpty ? 80.h : 16.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image carousel
                            ChadhavaImageCarouselWidget(
                              imageUrls: chadhava.imageUrls.isEmpty
                                  ? ['assets/images/shivji.png']
                                  : chadhava.imageUrls,
                            ),
                            // Description section
                            ChadhavaDescriptionWidget(
                              chadhava: chadhava,
                              reviews: reviews,
                              onSharePressed: () {
                                context.read<ChadhavaDetailsBloc>().add(
                                  const ChadhavaDetailsEvent.shareButtonTapped(),
                                );
                              },
                            ),
                            // Offerings list
                            ChadhavaOfferingsListWidget(
                              offerings: offerings,
                              selectedOfferings: selectedOfferings,
                              onAddPressed: (offering) {
                                context.read<ChadhavaDetailsBloc>().add(
                                  ChadhavaDetailsEvent.offeringAdded(
                                    offeringId: offering.id,
                                  ),
                                );
                              },
                              onRemovePressed: (offering) {
                                context.read<ChadhavaDetailsBloc>().add(
                                  ChadhavaDetailsEvent.offeringRemoved(
                                    offeringId: offering.id,
                                  ),
                                );
                              },
                            ),
                            // Reviews section
                            ChadhavaReviewSectionWidget(reviews: reviews),
                            // FAQ section
                            FaqSectionWidget(
                              faqs: faqs,
                              expandedIndices: expandedFaqIndices,
                              onItemToggled: (index) {
                                context.read<ChadhavaDetailsBloc>().add(
                                  ChadhavaDetailsEvent.faqItemToggled(
                                    index: index,
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      // Persistent bottom continue button
                      if (selectedOfferings.isNotEmpty)
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: _ContinueButtonWidget(
                            selectedOfferings: selectedOfferings,
                            onContinuePressed: () {
                              context.read<ChadhavaDetailsBloc>().add(
                                const ChadhavaDetailsEvent.continueButtonTapped(),
                              );
                              // TODO: Navigate to checkout/cart page
                            },
                          ),
                        ),
                    ],
                  );
                },
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 48,
                    color: context.colorScheme.error,
                  ),
                  SizedBox(height: 16),
                  Text(
                    message,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.colorScheme.error,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ContinueButtonWidget extends StatelessWidget {
  final List<ChadhavaOfferingEntity> selectedOfferings;
  final VoidCallback onContinuePressed;

  const _ContinueButtonWidget({
    required this.selectedOfferings,
    required this.onContinuePressed,
  });

  String _formatPrice(int priceInPaise) {
    final rupees = priceInPaise / 100;
    return rupees.toStringAsFixed(0);
  }

  int _calculateTotalPrice() {
    return selectedOfferings.fold<int>(
      0,
      (sum, offering) => sum + offering.price,
    );
  }

  @override
  Widget build(BuildContext context) {
    final totalPrice = _calculateTotalPrice();
    final itemCount = selectedOfferings.length;

    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            // Price and count info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '$itemCount ${itemCount == 1 ? 'item' : 'items'} selected',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '₹${_formatPrice(totalPrice)}',
                    style: context.textTheme.titleLarge?.copyWith(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            // Continue button
            ElevatedButton(
              onPressed: onContinuePressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
