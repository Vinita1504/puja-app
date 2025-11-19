import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// Contact number input widget
///
/// Displays a text field for entering the user's contact number with country code.
class ContactNumberInputWidget extends StatefulWidget {
  /// Controller for the contact number field
  final TextEditingController controller;

  const ContactNumberInputWidget({super.key, required this.controller});

  @override
  State<ContactNumberInputWidget> createState() =>
      _ContactNumberInputWidgetState();
}

class _ContactNumberInputWidgetState extends State<ContactNumberInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Number *',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          decoration: context.profileInputDecoration(
            hintText: '+91',
            isRequired: true,
          ),
          keyboardType: TextInputType.phone,
        ),
      ],
    );
  }
}
