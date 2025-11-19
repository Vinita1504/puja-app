import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// Place of birth input widget
///
/// Displays a text field for entering the place of birth.
class PlaceOfBirthInputWidget extends StatefulWidget {
  /// Controller for the place of birth field
  final TextEditingController controller;

  const PlaceOfBirthInputWidget({super.key, required this.controller});

  @override
  State<PlaceOfBirthInputWidget> createState() =>
      _PlaceOfBirthInputWidgetState();
}

class _PlaceOfBirthInputWidgetState extends State<PlaceOfBirthInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Place Of Birth',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          decoration: context.profileInputDecoration(
            hintText: 'Place Of Birth',
          ),
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
        ),
      ],
    );
  }
}
