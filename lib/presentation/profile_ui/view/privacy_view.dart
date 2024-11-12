import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "privacyPolicy".tr(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "privacyPolicy".tr(),
              style: AppTextStyles.mediumTitle14,
            ),
          ],
        ),
      ),
    );
  }
}
