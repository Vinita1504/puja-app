import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puja_karo/features/user/home/presentation/widgets/testimonials_section_widget.dart';
import '../widgets/home_drawer_widget.dart';
import '../widgets/home_search_bar_widget.dart';
import '../widgets/v2_widgets/home_v2_header_widget.dart';
import '../widgets/v2_widgets/home_v2_special_event_widget.dart';
import '../widgets/v2_widgets/home_v2_service_grid_widget.dart';
import '../widgets/v2_widgets/home_v2_recommended_pooja_widget.dart';
import '../widgets/v2_widgets/home_v2_astro_tools_widget.dart';
import '../widgets/v2_widgets/home_v2_chadhava_section_widget.dart';
import '../widgets/v2_widgets/home_v2_dosha_pooja_widget.dart';
import '../widgets/v2_widgets/home_v2_weekly_pooja_widget.dart';

/// Home page V2 for authenticated users
///
/// Displays the main home screen with an orange background upper section
/// containing header, search bar, special event highlight, and service cards grid,
/// and a white background lower section with recommended pooja.
class HomePageV2 extends StatelessWidget {
  const HomePageV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawerWidget(),
      body: CustomScrollView(
        slivers: [
          // Header section
          SliverToBoxAdapter(
            child: Container(
              color: const Color(0xFFF28C28),
              child: SafeArea(child: const HomeV2HeaderWidget()),
            ),
          ),
          // Pinned search bar
          SliverAppBar(
            pinned: true,
            floating: false,
            backgroundColor: const Color(0xFFF28C28),
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              color: const Color(0xFFF28C28),
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: SafeArea(child: const HomeSearchBarWidget()),
            ),
          ),
          // Special event and service grid
          SliverToBoxAdapter(
            child: Container(
              color: const Color(0xFFF28C28),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const Column(
                children: [
                  HomeV2SpecialEventWidget(),
                  HomeV2ServiceGridWidget(),
                ],
              ),
            ),
          ),
          // Recommended pooja section (white background)
          const SliverToBoxAdapter(child: HomeV2RecommendedPoojaWidget()),
          // Astro tools section (white background)
          const SliverToBoxAdapter(child: HomeV2AstroToolsWidget()),
          // Chadhava section (white background)
          const SliverToBoxAdapter(child: HomeV2ChadhavaSectionWidget()),
          // Dosha Nivaran Pooja section (white background)
          const SliverToBoxAdapter(child: HomeV2DoshaPoojaWidget()),
          // Weekly Pooja section (white background)
          const SliverToBoxAdapter(child: HomeV2WeeklyPoojaWidget()),

          const SliverToBoxAdapter(child: TestimonialsSectionWidget()),
        ],
      ),
    );
  }
}
