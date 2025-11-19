import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// State input widget
///
/// Displays a text field for entering the state.
class StateInputWidget extends StatefulWidget {
  /// Controller for the state field
  final TextEditingController controller;

  const StateInputWidget({super.key, required this.controller});

  @override
  State<StateInputWidget> createState() => _StateInputWidgetState();
}

class _StateInputWidgetState extends State<StateInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'State *',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          decoration: context.profileInputDecoration(
            hintText: 'State',
            isRequired: true,
          ),
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
        ),
      ],
    );
  }
}
