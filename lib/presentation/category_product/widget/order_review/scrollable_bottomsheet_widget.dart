import 'package:flutter/material.dart';

import '../../../component/buttons/buttons_custom_view.dart';
import '../../../resources/color_manager.dart';

class ScrollableBottomSheetWidget extends StatelessWidget {
  final String leftText,rightText;
  final void Function()? onCancel, onSubmit;

  const ScrollableBottomSheetWidget({super.key, this.onCancel, this.onSubmit, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorManager.grey,
            offset: Offset(30, 0),
            blurRadius: 26,
            blurStyle: BlurStyle.outer,
          )
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: ColorManager.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 170,
              height: 48,
              child: FilledButtonEdit(
                text: leftText,
                textSize: 16,
                textColor: ColorManager.primary,
                buttonColor: ColorManager.grey,
                onClick: onCancel,
              ),
            ),
            SizedBox(
              width: 170,
              height: 48,
              child: FilledButtonEdit(
                text: rightText,
                textSize: 16,
                textColor: ColorManager.white,
                buttonColor: ColorManager.primary,
                onClick: onSubmit,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
