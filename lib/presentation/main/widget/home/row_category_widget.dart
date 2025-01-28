import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';

class RowCategoryWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const RowCategoryWidget({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: AppTextStyles.largeTitle18),
            TextButton(
                onPressed: onPressed,
                child: Text("seeAll".tr(),
                    style: AppTextStyles.smallTitleBrown12)),
          ],
        ),
      ],
    );
  }
}