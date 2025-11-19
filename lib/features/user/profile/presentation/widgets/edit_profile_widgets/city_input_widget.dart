import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// City input widget
///
/// Displays a text field for entering the city.
class CityInputWidget extends StatefulWidget {
  /// Controller for the city field
  final TextEditingController controller;

  const CityInputWidget({super.key, required this.controller});

  @override
  State<CityInputWidget> createState() => _CityInputWidgetState();
}

class _CityInputWidgetState extends State<CityInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'City *',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          decoration: context.profileInputDecoration(
            hintText: 'City',
            isRequired: true,
          ),
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
        ),
      ],
    );
  }
}
