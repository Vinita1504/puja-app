import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/context_extension.dart';
import 'pin_code_input_widget.dart';
import 'state_input_widget.dart';
import 'city_input_widget.dart';
import 'address_line_input_widget.dart';

/// Address section widget
///
/// Container widget that groups all address-related input fields together.
class AddressSectionWidget extends StatelessWidget {
  /// Controller for pin code field
  final TextEditingController pinCodeController;

  /// Controller for state field
  final TextEditingController stateController;

  /// Controller for city field
  final TextEditingController cityController;

  /// Controller for address line field
  final TextEditingController addressLineController;

  const AddressSectionWidget({
    super.key,
    required this.pinCodeController,
    required this.stateController,
    required this.cityController,
    required this.addressLineController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address *',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.colorScheme.onSurface,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Expanded(child: PinCodeInputWidget(controller: pinCodeController)),
            SizedBox(width: 16.w),
            Expanded(child: StateInputWidget(controller: stateController)),
          ],
        ),
        SizedBox(height: 16.h),
        CityInputWidget(controller: cityController),
        SizedBox(height: 16.h),
        AddressLineInputWidget(controller: addressLineController),
      ],
    );
  }
}
