import 'package:fashion/data/resources/assets_manager.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/payment/multiple_banner_widget.dart';
import '../widget/payment/single_banner_widget.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Methods",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Credit & Debit Card",
                style: AppTextStyles.largeTitle18),
            const SizedBox(height: 12),
            SingleBannerWidget(onTap: () {}),
            const SizedBox(height: 24),
            const Text("More Payment Options",
                style: AppTextStyles.largeTitle18),
            const SizedBox(height: 12),
            MultipleBannerWidget(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
