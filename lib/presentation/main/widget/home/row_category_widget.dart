import 'package:flutter/material.dart';
import 'package:fashion/data/resources/styles_manager.dart';

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
                child: const Text("See All",
                    style: AppTextStyles.smallTitleBrown12)),
          ],
        ),
      ],
    );
  }
}