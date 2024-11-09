import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../data/resources/color_manager.dart';
import '../../../../data/resources/styles_manager.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: 325,
          child: PageView(
            controller: pageController,
            children: List.generate(4, (index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorManager.secandary,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "New Collection",
                      style: AppTextStyles.largeTitle18,
                    ),
                    const Text(
                      "Discount 50% for \nthe first transaction",
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
                        child: const Text(
                          "Shop Now",
                          style: AppTextStyles.smallTitleWhite12,
                        ),
                      ),
                    ),
                  ],
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
    );
  }
}
