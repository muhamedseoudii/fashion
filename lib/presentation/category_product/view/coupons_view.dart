import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resources/styles_manager.dart';

class CouponsView extends StatelessWidget {
  const CouponsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SvgPicture.asset(
                IconAssets.arrowBackCircleIcon,
                fit: BoxFit.scaleDown,
              ),
            )),
        title: Text(
          "Coupons",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Best offers for you",
              style: AppTextStyles.largeTitle16,
            ),
            const SizedBox(height: 12),
            CouponCard(
              firstChild: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 31, vertical: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME200",
                      style: AppTextStyles.mediumTitle14
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Add items worth \$2 more to unlock",
                      style: AppTextStyles.smallTitleGrey12,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Get 50% OFF",
                      style: AppTextStyles.mediumTitle14
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              secondChild: Container(
                alignment: Alignment.center,
                color: ColorManager.grey,
                child: Text(
                  "COPY CODE",
                  style: AppTextStyles.mediumTitleBrown14
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              border: BorderSide(
                width: 1.5,
                color: ColorManager.grey1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
