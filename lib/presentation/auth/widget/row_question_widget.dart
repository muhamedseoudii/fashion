import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:fashion/presentation/resources/font_manager.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class RowQuestionWidget extends StatelessWidget {
  final String title, desc;
  final void Function()? onPressed;

  const RowQuestionWidget({
    super.key,
    required this.title,
    required this.desc,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          title,
          style: AppTextStyles.smallTitle12,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textAlign: TextAlign.center,
            desc,
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: ColorManager.primary,
                color: ColorManager.primary,
                fontWeight: FontWeight.w500,
                fontSize: 12,
                fontFamily: FontConstants.fontFamily),
          ),
        ),
      ],
    );
  }
}
