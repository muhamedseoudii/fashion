import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/presentation/auth/widget/pinput_widget.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/styles_manager.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: ColorManager.white,
                      border: Border.fromBorderSide(
                          BorderSide(color: ColorManager.grey1))),
                  child: const Icon(
                    Icons.arrow_back_outlined,
                    size: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "verifyCode".tr(),
                        style: AppTextStyles.largeTitle20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        style: AppTextStyles.largeTitleLightGrey12,
                        text: "enterCode".tr(),
                        children: const [
                          TextSpan(
                            style: AppTextStyles.smallTitleBrown12,
                            text: "muhammedsoudii@gmail.com",
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 36),
                    const PinputCustom(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
