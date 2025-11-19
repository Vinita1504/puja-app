import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/shared/widgets/faq_section_widget.dart';
import '../bloc/puja_details/puja_details_bloc.dart';
import '../bloc/puja_details/puja_details_event.dart';
import '../bloc/puja_details/puja_details_state.dart';
import '../widgets/puja_details_widgets/puja_details_header_widget.dart';
import '../widgets/puja_details_widgets/puja_image_carousel_widget.dart';
import '../widgets/puja_details_widgets/puja_description_widget.dart';
import '../widgets/puja_details_widgets/puja_tabs_widget.dart';
import '../widgets/puja_details_widgets/package_selection_buttons_widget.dart';
import '../widgets/puja_details_widgets/package_details_card_widget.dart';
import '../widgets/puja_details_widgets/puja_benefits_section_widget.dart';
import '../widgets/puja_details_widgets/reviews_section_widget.dart';

/// Puja details page
///
/// Displays detailed information about a puja ceremony including
/// images, description, packages, benefits, reviews, and FAQs.
class PujaDetailsPage extends StatefulWidget {
  final String pujaId;

  const PujaDetailsPage({super.key, required this.pujaId});

  @override
  State<PujaDetailsPage> createState() => _PujaDetailsPageState();
}

class _PujaDetailsPageState extends State<PujaDetailsPage> {
  late ScrollController _scrollController;
  final GlobalKey _packagesKey = GlobalKey();
  final GlobalKey _benefitsKey = GlobalKey();
  final GlobalKey _reviewsKey = GlobalKey();
  final GlobalKey _faqsKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    _updateActiveTab();
  }

  void _updateActiveTab() {
    if (!_scrollController.hasClients) return;

    final scrollPosition = _scrollController.offset;
    final appBarHeight = 56.0; // AppBar height
    final stickyTabsHeight = 60.0; // Sticky tabs height
    final threshold = appBarHeight + stickyTabsHeight + 50.0;

    // Get positions of each section relative to scroll position
    final benefitsPosition = _getSectionScrollPosition(_benefitsKey);
    final reviewsPosition = _getSectionScrollPosition(_reviewsKey);
    final faqsPosition = _getSectionScrollPosition(_faqsKey);

    int newActiveTab = 0;

    // Check from bottom to top to find the first section that has scrolled past the threshold
    if (faqsPosition != null && scrollPosition + threshold >= faqsPosition) {
      newActiveTab = 3; // FAQs
    } else if (reviewsPosition != null &&
        scrollPosition + threshold >= reviewsPosition) {
      newActiveTab = 2; // Reviews
    } else if (benefitsPosition != null &&
        scrollPosition + threshold >= benefitsPosition) {
      newActiveTab = 1; // Benefits
    } else {
      newActiveTab = 0; // Packages (default)
    }

    // Dispatch event to update active tab in BLoC
    final currentState = context.read<PujaDetailsBloc>().state;
    currentState.whenOrNull(
      loaded: (_, __, ___, activeTabIndex, ____, ______, _______) {
        if (newActiveTab != activeTabIndex) {
          context.read<PujaDetailsBloc>().add(
            PujaDetailsEvent.tabChanged(index: newActiveTab),
          );
        }
      },
    );
  }

  double? _getSectionScrollPosition(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return null;
    final RenderBox? renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return null;

    // Get the position of the section in the global coordinate system
    final position = renderBox.localToGlobal(Offset.zero);

    // Get the scrollable's position
    final scrollableContext = _scrollController.position.context.storageContext;
    final scrollableBox = scrollableContext.findRenderObject() as RenderBox?;
    if (scrollableBox == null) return null;

    final scrollablePosition = scrollableBox.localToGlobal(Offset.zero);
    // Calculate the position relative to the scroll view's top
    return position.dy - scrollablePosition.dy + _scrollController.offset;
  }

  void _scrollToSection(int index) {
    GlobalKey? targetKey;
    switch (index) {
      case 0:
        targetKey = _packagesKey;
        break;
      case 1:
        targetKey = _benefitsKey;
        break;
      case 2:
        targetKey = _reviewsKey;
        break;
      case 3:
        targetKey = _faqsKey;
        break;
    }
    if (targetKey?.currentContext != null) {
      Scrollable.ensureVisible(
        targetKey!.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0.1, // Scroll to show section with some top padding
      );
      // Dispatch event to update active tab
      context.read<PujaDetailsBloc>().add(
        PujaDetailsEvent.tabChanged(index: index),
      );
    }
  }

  void _scrollToPackages() {
    _scrollToSection(0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PujaDetailsBloc, PujaDetailsState>(
      builder: (context, state) {
        // Get pujaId and packageId from state for cart navigation
        String? packageId;
        state.whenOrNull(
          loaded: (puja, packages, _, __, selectedPackage, ___, ____) {
            final selectedPackageEntity = packages.firstWhere(
              (pkg) => pkg.name == selectedPackage,
              orElse: () => packages.first,
            );
            packageId = selectedPackageEntity.id;
          },
        );

        return Scaffold(
          backgroundColor: context.colorScheme.surface,
          appBar: PujaDetailsHeaderWidget(
            onBackPressed: () => context.pop(),
            onCartPressed: () {
              // Navigate to cart with actual pujaId and selected packageId
              final finalPackageId = packageId ?? 'default';
              context.push('/pujaCart/${widget.pujaId}/$finalPackageId');
            },
          ),
          body: _buildBody(context, state),
          bottomNavigationBar: _buildBottomNavigationBar(context),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, PujaDetailsState state) {
    return state.when(
      initial: () => const Center(child: CircularProgressIndicator()),
      loading: () => const Center(child: CircularProgressIndicator()),
      loaded:
                (
                  puja,
                  packages,
                  faqs,
                  activeTabIndex,
                  selectedPackage,
                  expandedFaqIndices,
                  currentImageIndex,
                ) {
                  // Get selected package entity
                  final selectedPackageEntity = packages.firstWhere(
                    (pkg) => pkg.name == selectedPackage,
                    orElse: () => packages.first,
                  );

                  return CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      // Image carousel
                      SliverToBoxAdapter(
                        child: PujaImageCarouselWidget(
                          imageUrls: puja.imageUrls,
                          currentIndex: currentImageIndex,
                          onPageChanged: (index) {
                            context.read<PujaDetailsBloc>().add(
                              PujaDetailsEvent.carouselImageChanged(
                                index: index,
                              ),
                            );
                          },
                        ),
                      ),
                      // Description
                      SliverToBoxAdapter(
                        child: PujaDescriptionWidget(puja: puja),
                      ),
                      // Sticky Tabs
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: _StickyTabsDelegate(
                          child: PujaTabsWidget(
                            activeTabIndex: activeTabIndex,
                            onTabTapped: _scrollToSection,
                          ),
                        ),
                      ),
                      // Packages Section
                      SliverToBoxAdapter(
                        child: Container(
                          key: _packagesKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PackageSelectionButtonsWidget(
                                selectedPackage: selectedPackage,
                                onPackageSelected: (package) {
                                  context.read<PujaDetailsBloc>().add(
                                    PujaDetailsEvent.packageSelected(
                                      packageName: package,
                                    ),
                                  );
                                },
                              ),
                              PackageDetailsCardWidget(
                                package: selectedPackageEntity,
                                onBookNowPressed: () {
                                  // TODO: Implement booking navigation
                                },
                              ),
                              SizedBox(height: 24.h),
                            ],
                          ),
                        ),
                      ),
                      // Benefits Section
                      SliverToBoxAdapter(
                        child: Container(
                          key: _benefitsKey,
                          child: PujaBenefitsSectionWidget(puja: puja),
                        ),
                      ),
                      // Reviews Section
                      SliverToBoxAdapter(
                        child: Container(
                          key: _reviewsKey,
                          child: const ReviewsSectionWidget(),
                        ),
                      ),
                      // FAQs Section
                      SliverToBoxAdapter(
                        child: Container(
                          key: _faqsKey,
                          child: FaqSectionWidget(
                            faqs: faqs,
                            expandedIndices: expandedFaqIndices,
                            onItemToggled: (index) {
                              context.read<PujaDetailsBloc>().add(
                                PujaDetailsEvent.faqItemToggled(index: index),
                              );
                            },
                          ),
                        ),
                      ),
                      // Bottom padding
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 16.h,
                        ), // Space for bottom button
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
                    size: 48.sp,
                    color: context.colorScheme.error,
                  ),
                  SizedBox(height: 16.h),
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
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
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
          child: SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    context.colorScheme.primary,
                    context.colorScheme.primary.withValues(alpha: 0.8),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: ElevatedButton(
                onPressed: _scrollToPackages,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                ),
                child: Text(
                  'Book Now',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}

/// Delegate for sticky tabs header
class _StickyTabsDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyTabsDelegate({required this.child});

  @override
  double get minExtent => 60;

  @override
  double get maxExtent => 60;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(_StickyTabsDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
