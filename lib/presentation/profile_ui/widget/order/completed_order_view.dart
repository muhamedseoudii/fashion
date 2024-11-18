import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class CompletedOrderView extends StatelessWidget {
  const CompletedOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) {
      return SizedBox(
        width: double.infinity,
        height: 100,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
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
                      const Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Brown Jacket",
                              style: AppTextStyles.mediumTitle14,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Size : XL | Qty : 10pcs",
                              style: AppTextStyles.smallTitleGrey12,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "\$83.97",
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        alignment: Alignment.center,
                        width: screenWidth * 0.30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(78),
                          color: ColorManager.primary,
                        ),
                        child: Text(
                          "leaveReview".tr(),
                          style: AppTextStyles.mediumTitleWhite14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      );
    }, separatorBuilder: (context, index) => const Divider(), itemCount: 6);
  }
}
