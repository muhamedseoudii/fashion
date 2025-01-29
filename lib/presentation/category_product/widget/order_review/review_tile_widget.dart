import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/styles_manager.dart';

class ReviewTileWidget extends StatelessWidget {
  final String title;
  const ReviewTileWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(IconAssets.starIcon,height: 17),
        SizedBox(width: 2),
        SvgPicture.asset(IconAssets.starIcon,height: 17),
        SizedBox(width: 2),
        SvgPicture.asset(IconAssets.starIcon,height: 17),
        SizedBox(width: 2),
        SvgPicture.asset(IconAssets.starIcon,height: 17),
        SizedBox(width: 2),
        SvgPicture.asset(IconAssets.starIcon,height: 17),
        SizedBox(width: 5),
        Text(title,
            style: AppTextStyles.largeTitle16),
      ],
    );
  }
}
