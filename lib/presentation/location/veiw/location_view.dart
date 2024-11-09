import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/assets_manager.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:fashion/presentation/component/buttons/buttons_custom_view.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/routes_manager.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.location),
            Text(
              textAlign: TextAlign.center,
              "whatsLocation".tr(),
              style: AppTextStyles.largeTitle20,
            ),
            const SizedBox(height: 16),
            Text(
              textAlign: TextAlign.center,
              "weNeed".tr(),
              style: AppTextStyles.largeTitleLightGrey12,
            ),
            const SizedBox(height: 36),
            FilledButtomEdit(
              text: "allowLocation".tr(),
              textSize: 16,
              textColor: ColorManager.white,
              buttonColor: ColorManager.primary,
              onClick: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.mainScreenRoute, (route) => false);
              },
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.manualLocationRoute);
              },
              child: Text(
                textAlign: TextAlign.center,
                "enterLocation".tr(),
                style: AppTextStyles.mediumTitleBrown14,
              ),
            )
          ],
        ),
      )),
    );
  }
}
