import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/routes_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:fashion/presentation/component/buttons/buttons_custom_view.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 379,
                    width: 159,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(220),
                        color: ColorManager.grey1),
                  ),
                  const SizedBox(width: 9),
                  Column(
                    children: [
                      Container(
                        height: 211,
                        width: 159,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(220),
                            color: ColorManager.grey1),
                      ),
                      const SizedBox(height: 9),
                      Container(
                        height: 159,
                        width: 159,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(220),
                            color: ColorManager.grey1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'text1'.tr(),
                style: AppTextStyles.largeTitle20,
                children: [
                  TextSpan(
                    text: 'text2'.tr(), // This part will be red
                    style: TextStyle(color: ColorManager.primary),
                  ),
                  TextSpan(
                    text: 'text3'.tr(), // Default color for this part
                  ),
                ],
              ),
            ),
            const SizedBox(height: 9),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Text(
                textAlign: TextAlign.center,
                "text4".tr(),
                style: AppTextStyles.smallTitleGrey12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: FilledButtomEdit(
                text: "getStarted".tr(),
                textSize: 14,
                textColor: ColorManager.white,
                buttonColor: ColorManager.primary,
                onClick: () {
                  Navigator.pushReplacementNamed(
                      context, Routes.onboardingRoute);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "haveAccount".tr(),
                  style: AppTextStyles.mediumTitle14,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    textAlign: TextAlign.center,
                    "signIn".tr(),
                    style: AppTextStyles.mediumTitleBrown14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
