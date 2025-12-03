import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../domain/entities/shankhpal_dosha_result.dart';
import '../../bloc/dosha_result/dosha_result_bloc.dart';
import '../../bloc/dosha_result/dosha_result_event.dart';
import '../../bloc/dosha_result/dosha_result_state.dart';

/// Shankhpal meaning accordion widget
///
/// Displays a collapsible accordion card for the meaning/description
/// of Shankhpal dosha.
class ShankhpalMeaningAccordionWidget extends StatelessWidget {
  final ShankhpalDoshaResult shankhpalDoshaResult;

  const ShankhpalMeaningAccordionWidget({
    super.key,
    required this.shankhpalDoshaResult,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoshaResultBloc, DoshaResultState>(
      builder: (context, state) {
        if (state is! DoshaResultLoadedState) {
          return const SizedBox.shrink();
        }

        final isExpanded = state.isShankhpalMeaningExpanded;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Meaning',
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onSurface,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: context.colorScheme.outlineVariant.withValues(alpha: 0.3),
                    width: 0.5.w,
                  ),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<DoshaResultBloc>().add(
                              const ShankhpalMeaningAccordionToggled(),
                            );
                      },
                      borderRadius: BorderRadius.circular(12.r),
                      child: Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Shankhpal Kaal Sarp Dosh',
                                style: context.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: context.colorScheme.onSurface,
                                ),
                              ),
                            ),
                            Icon(
                              isExpanded ? Icons.expand_less : Icons.expand_more,
                              color: context.colorScheme.onSurface,
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (isExpanded)
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            shankhpalDoshaResult.botResponse,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

