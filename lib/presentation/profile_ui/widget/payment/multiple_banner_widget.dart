import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../presentation/resources/assets_manager.dart';
import '../../../../presentation/resources/color_manager.dart';
import '../../../../presentation/resources/styles_manager.dart';

class MultipleBannerWidget extends StatelessWidget {
  final void Function()? onTap;
  const MultipleBannerWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 104,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.fromBorderSide(
              BorderSide(color: ColorManager.grey1)),
          boxShadow: [
            BoxShadow(
                blurStyle: BlurStyle.outer,
                color: ColorManager.grey,
                blurRadius: 5,
                offset:
                const Offset(1, 1))
          ],),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(IconAssets.paypalIcon),
                      const SizedBox(width: 12),
                      const Text("Paypal",
                          style: AppTextStyles.mediumGreyTitle14),
                    ],
                  ),
                   Text("link".tr(), style: AppTextStyles
                      .mediumTitleBrown14),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 5, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(ImageAssets.apple),
                      const SizedBox(width: 12),
                      const Text("Apple Pay",
                          style: AppTextStyles.mediumGreyTitle14),
                    ],
                  ),
                   Text("link".tr(), style: AppTextStyles
                      .mediumTitleBrown14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
