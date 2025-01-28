import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/styles_manager.dart';

class OrderReviewWidget extends StatelessWidget {
  final String type, desc, price;
  final void Function()? onTap;

  const OrderReviewWidget(
      {super.key,
      this.onTap,
      required this.type,
      required this.desc,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth * 0.22,
                    height: screenWidth * 0.22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorManager.grey1,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          type,
                          style: AppTextStyles.mediumTitle14,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          desc,
                          style: AppTextStyles.smallTitleGrey12,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          price,
                          style: AppTextStyles.mediumTitle14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        alignment: Alignment.center,
                        width: screenWidth * 0.30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(78),
                          color: ColorManager.primary,
                        ),
                        child: Text(
                          "reOrder".tr(),
                          style: AppTextStyles.mediumTitleWhite14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
