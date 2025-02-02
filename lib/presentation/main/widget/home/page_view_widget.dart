import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../presentation/resources/color_manager.dart';
import '../../../../presentation/resources/styles_manager.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Stack(
      children: [
        Column(
          children: [
            // Image.asset(ImageAssets.vector),
            SizedBox(
              height: 150,
              width: 325,
              child: PageView(
                controller: pageController,
                children: List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorManager.secondary,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "newCollection".tr(),
                            style: AppTextStyles.largeTitle18,
                          ),
                          Text(
                            "text5".tr(),
                            style: AppTextStyles.smallTitleGrey12,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 26,
                              width: 83,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorManager.primary,
                              ),
                              child: Text(
                                "shopNow".tr(),
                                style: AppTextStyles.smallTitleWhite12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 16),
            // Dot indicator
            SmoothPageIndicator(
              controller: pageController,
              count: 4,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: ColorManager.primary,
                dotColor: Colors.grey,
              ),
            ),
          ],
        ),
        PositionedDirectional(
          start: 5,
          top: 20,
          child: SvgPicture.asset(
            IconAssets.vectorIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}
