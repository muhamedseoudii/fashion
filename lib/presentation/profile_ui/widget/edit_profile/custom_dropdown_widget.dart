import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

import '../../../../presentation/resources/color_manager.dart';

class CustomDropdownWidget extends StatelessWidget {
  final String? hintText;
  final List<Object> items;
  final String? Function(Object?)? validator;
  final dynamic Function(Object?) onChange;
  final num? initialItem;

  const CustomDropdownWidget(
      {super.key,
      this.initialItem,
      required this.items,
      required this.validator,
      required this.onChange,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      hintText: hintText,
      items: items,
      initialItem: initialItem,
      decoration: CustomDropdownDecoration(
          closedErrorBorder: Border.fromBorderSide(
            BorderSide(color: ColorManager.red),
          ),
          closedErrorBorderRadius: BorderRadius.circular(200),
          closedBorderRadius: BorderRadius.circular(200),
          closedBorder: Border.fromBorderSide(
            BorderSide(color: ColorManager.grey1),
          ),
          expandedBorder: Border.fromBorderSide(
            BorderSide(color: ColorManager.grey1),
          ),
          expandedBorderRadius: BorderRadius.circular(12),
          expandedShadow: List.empty()),
      validator: validator,
      onChanged: onChange,
    );
  }
}
