import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// Email input widget
///
/// Displays a text field for entering the user's email address.
class EmailInputWidget extends StatefulWidget {
  /// Controller for the email field
  final TextEditingController controller;

  const EmailInputWidget({super.key, required this.controller});

  @override
  State<EmailInputWidget> createState() => _EmailInputWidgetState();
}

class _EmailInputWidgetState extends State<EmailInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email *',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          decoration: context.profileInputDecoration(
            hintText: 'Enter Email',
            isRequired: true,
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
