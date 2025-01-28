import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

import '../widget/payment/multiple_banner_widget.dart';
import '../widget/payment/single_banner_widget.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "paymentMethods".tr(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("creditCard".tr(),
                style: AppTextStyles.largeTitle18),
            const SizedBox(height: 12),
            SingleBannerWidget(onTap: () {}),
            const SizedBox(height: 24),
            Text("morePaymentOptions".tr(),
                style: AppTextStyles.largeTitle18),
            const SizedBox(height: 12),
            MultipleBannerWidget(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
