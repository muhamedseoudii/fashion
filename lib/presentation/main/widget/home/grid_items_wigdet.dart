import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../presentation/resources/assets_manager.dart';
import '../../../../presentation/resources/color_manager.dart';
import '../../../../presentation/resources/styles_manager.dart';

class GridItemsWidget extends StatelessWidget {
  final String type, rate, price;
  final IconData? icon;
  final void Function()? onTapFavorite;

  const GridItemsWidget(
      {super.key,
      this.onTapFavorite,
      required this.type,
      required this.rate,
      required this.price, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            alignment: Alignment.topRight,
            height: 50,  // This container takes 150 height
            decoration: BoxDecoration(
                color: ColorManager.grey1,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: ColorManager.offWhite,
              child: InkWell(
                  onTap: onTapFavorite,
                  child: Icon(icon, color: ColorManager.primary)),
            ),
          ),
        ),
        SizedBox(height: 8),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(type, style: AppTextStyles.mediumTitle14),
                  Row(
                    children: [
                      SvgPicture.asset(IconAssets.starIcon),
                      Text(rate, style: AppTextStyles.smallTitleGrey12),
                    ],
                  ),
                ],
              ),
              Text(price, style: AppTextStyles.mediumTitle14),
            ],
          ),
        ),
      ],
    );
  }
}
