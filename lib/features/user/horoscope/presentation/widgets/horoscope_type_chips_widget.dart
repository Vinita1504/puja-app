import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/horoscope_details/horoscope_details_bloc.dart';
import '../bloc/horoscope_details/horoscope_details_event.dart';

/// Horoscope type chips widget
///
/// Displays two chips for Daily Sun and Daily Moon selection.
/// The selected chip has an orange border and white background.
class HoroscopeTypeChipsWidget extends StatelessWidget {
  final String selectedType;

  const HoroscopeTypeChipsWidget({
    super.key,
    required this.selectedType,
  });

  @override
  Widget build(BuildContext context) {
    final isDailySunSelected = selectedType == 'daily_sun';

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          Expanded(
            child: _HoroscopeChip(
              label: 'Daily Sun',
              isSelected: isDailySunSelected,
              onTap: () {
                if (!isDailySunSelected) {
                  context.read<HoroscopeDetailsBloc>().add(
                        const HoroscopeTypeChanged(
                          type: 'daily_sun',
                        ),
                      );
                }
              },
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: _HoroscopeChip(
              label: 'Daily Moon',
              isSelected: !isDailySunSelected,
              onTap: () {
                if (isDailySunSelected) {
                  context.read<HoroscopeDetailsBloc>().add(
                        const HoroscopeTypeChanged(
                          type: 'daily_moon',
                        ),
                      );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _HoroscopeChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _HoroscopeChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(12.r),
          border: isSelected
              ? Border.all(
                  color: Colors.orange,
                  width: 2.w,
                )
              : null,
        ),
        child: Center(
          child: Text(
            label,
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

