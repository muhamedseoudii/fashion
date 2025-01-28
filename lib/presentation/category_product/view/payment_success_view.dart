import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../../component/text_buttons/text_field_custom.dart';
import '../../resources/routes_manager.dart';
import '../../resources/styles_manager.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

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
            "Payment",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset(ImageAssets.check)),
              const SizedBox(height: 20),
              const Text(
                "Payment Successful!",
                style: AppTextStyles.largeTitle22,
              ),
              const SizedBox(height: 16),
              const Text(
                "Thank you for your purchase.",
                style: AppTextStyles.mediumGreyTitle14,
              ),
            ],
          ),
        ),
        bottomSheet: DraggableScrollableSheet(
          expand: false,
          snap: true,
          snapSizes: [0.2, 0.3],
          initialChildSize: 0.2,
          minChildSize: 0.2,
          // maxChildSize: 0.3,
          builder: (context, scrollController) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: ColorManager.grey,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Column(
                  children: [
                    FilledButtonEdit(
                      text: "View Order",
                      textSize: 16,
                      textColor: ColorManager.white,
                      buttonColor: ColorManager.primary,
                      onClick: () {
                        Navigator.pushNamed(context, Routes.checkoutRoute);
                      },
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "View E-Receipt",
                      style: AppTextStyles.largeTitleBrown16,
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
