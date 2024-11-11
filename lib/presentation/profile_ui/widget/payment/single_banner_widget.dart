import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/resources/assets_manager.dart';
import '../../../../data/resources/color_manager.dart';
import '../../../../data/resources/styles_manager.dart';

class SingleBannerWidget extends StatelessWidget {
  final void Function()? onTap;
  const SingleBannerWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.fromBorderSide(
              BorderSide(color: ColorManager.grey1)),
          boxShadow:[
            BoxShadow(
                blurStyle: BlurStyle.outer,
                color: ColorManager.grey,
                blurRadius: 5,
                offset:
                const Offset(1, 1))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(IconAssets.cardFillIcon),
                const SizedBox(width: 12),
                const Text("Add New Card",
                    style: AppTextStyles.mediumGreyTitle14),
              ],
            ),
            const Text("Link", style: AppTextStyles.mediumTitleBrown14),
          ],
        ),
      ),
    );
  }
}
