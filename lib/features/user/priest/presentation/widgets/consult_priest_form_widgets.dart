import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/input_decoration_extension.dart';

/// Name input widget for consult priest form

/// Displays a required text field for entering the user's name.
class ConsultPriestNameInputWidget extends StatelessWidget {
  /// Controller for the name field
  final TextEditingController controller;

  /// Validator function for form validation
  final String? Function(String?)? validator;

  const ConsultPriestNameInputWidget({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'Name *',
        //   style: context.textTheme.bodyMedium?.copyWith(
        //     fontWeight: FontWeight.w600,
        //     color: context.colorScheme.onSurface,
        //   ),
        // ),
        // SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          decoration: context.profileInputDecoration(
            labelText: 'Name',
            hintText: 'Enter Name',
            isRequired: true,
          ),
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.words,
          validator: validator,
        ),
      ],
    );
  }
}

/// Phone input widget for consult priest form
///
/// Displays a text field for entering phone number.
class ConsultPriestPhoneInputWidget extends StatelessWidget {
  /// Controller for the phone field
  final TextEditingController controller;

  const ConsultPriestPhoneInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'Phone No.',
        //   style: context.textTheme.bodyMedium?.copyWith(
        //     fontWeight: FontWeight.w600,
        //     color: context.colorScheme.onSurface,
        //   ),
        // ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          decoration: context.profileInputDecoration(
            labelText: 'Phone Number',
            hintText: 'Enter Phone Number',
          ),
          keyboardType: TextInputType.phone,
        ),
      ],
    );
  }
}

/// Email input widget for consult priest form
///
/// Displays a text field for entering email address.
class ConsultPriestEmailInputWidget extends StatelessWidget {
  /// Controller for the email field
  final TextEditingController controller;

  const ConsultPriestEmailInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'Email',
        //   style: context.textTheme.bodyMedium?.copyWith(
        //     fontWeight: FontWeight.w600,
        //     color: context.colorScheme.onSurface,
        //   ),
        // ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          decoration: context.profileInputDecoration(
            labelText: 'Email',
            hintText: 'Enter Email',
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}

/// Comments input widget for consult priest form
///
/// Displays a multi-line text field for entering comments.
class ConsultPriestCommentsInputWidget extends StatelessWidget {
  /// Controller for the comments field
  final TextEditingController controller;

  const ConsultPriestCommentsInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'Your Comments',
        //   style: context.textTheme.bodyMedium?.copyWith(
        //     fontWeight: FontWeight.w600,
        //     color: context.colorScheme.onSurface,
        //   ),
        // ),
        // SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          decoration: context.profileInputDecoration(
            hintText: 'Enter your comments',
            labelText: 'Your Comments',
          ),
          keyboardType: TextInputType.multiline,
          maxLines: 2,
          textCapitalization: TextCapitalization.sentences,
        ),
      ],
    );
  }
}
