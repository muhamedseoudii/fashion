import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/app/app_root.dart';
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
                 Text("addCard".tr(),
                    style: AppTextStyles.mediumGreyTitle14),
              ],
            ),
             Text("link".tr(), style: AppTextStyles.mediumTitleBrown14),
          ],
        ),
      ),
    );
  }
}
