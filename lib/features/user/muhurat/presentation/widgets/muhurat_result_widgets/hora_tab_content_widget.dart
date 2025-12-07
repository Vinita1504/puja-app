import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/entities/muhurat_result.dart';
import 'hora_card_widget.dart';

/// Hora tab content widget
///
/// Displays Hora muhurats in a scrollable list.
class HoraTabContentWidget extends StatelessWidget {
  /// Muhurat result data
  final MuhuratResult muhuratResult;

  const HoraTabContentWidget({
    super.key,
    required this.muhuratResult,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...muhuratResult.horas.map(
            (hora) => HoraCardWidget(hora: hora),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}

