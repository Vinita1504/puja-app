import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// Name input widget
///
/// Displays a text field for entering the user's name.
class NameInputWidget extends StatefulWidget {
  /// Controller for the name field
  final TextEditingController controller;

  const NameInputWidget({super.key, required this.controller});

  @override
  State<NameInputWidget> createState() => _NameInputWidgetState();
}

class _NameInputWidgetState extends State<NameInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name *',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          decoration: context.profileInputDecoration(
            hintText: 'Rahul',
            isRequired: true,
          ),
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.words,
        ),
      ],
    );
  }
}
