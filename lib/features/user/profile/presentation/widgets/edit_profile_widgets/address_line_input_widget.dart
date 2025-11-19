import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/extensions/input_decoration_extension.dart';

/// Address line input widget
///
/// Displays a text field for entering the address line (road name, area, colony).
class AddressLineInputWidget extends StatefulWidget {
  /// Controller for the address line field
  final TextEditingController controller;

  const AddressLineInputWidget({super.key, required this.controller});

  @override
  State<AddressLineInputWidget> createState() => _AddressLineInputWidgetState();
}

class _AddressLineInputWidgetState extends State<AddressLineInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Road name, area, colony *',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: widget.controller,
          decoration: context.profileInputDecoration(
            hintText: 'Road name, area, colony',
            isRequired: true,
          ),
          keyboardType: TextInputType.streetAddress,
          textCapitalization: TextCapitalization.words,
          maxLines: 2,
        ),
      ],
    );
  }
}
