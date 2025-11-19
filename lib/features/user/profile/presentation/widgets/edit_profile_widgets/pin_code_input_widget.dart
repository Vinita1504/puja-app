import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// Pin code input widget
///
/// Displays a text field for entering the pin code.
class PinCodeInputWidget extends StatefulWidget {
  /// Controller for the pin code field
  final TextEditingController controller;

  const PinCodeInputWidget({super.key, required this.controller});

  @override
  State<PinCodeInputWidget> createState() => _PinCodeInputWidgetState();
}

class _PinCodeInputWidgetState extends State<PinCodeInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pin Code *',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          decoration: context.profileInputDecoration(
            hintText: 'Pin Code',
            isRequired: true,
          ),
          keyboardType: TextInputType.number,
          // maxLength: 6,
        ),
      ],
    );
  }
}
