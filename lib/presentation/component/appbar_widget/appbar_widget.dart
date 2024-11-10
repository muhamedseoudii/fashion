import 'package:flutter/material.dart';

import '../../../data/resources/color_manager.dart';
import '../../../data/resources/styles_manager.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
  const AppbarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              border:
                  Border.fromBorderSide(BorderSide(color: ColorManager.grey1))),
          child: const Icon(Icons.arrow_back_outlined),
        ),
        const SizedBox(width: 97),
        Text(
          title,
          style: AppTextStyles.mediumTitle16,
        ),
      ],
    );
  }
}
