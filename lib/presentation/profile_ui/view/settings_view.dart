import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/app/app_root.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/assets_manager.dart';
import '../../../data/resources/routes_manager.dart';
import '../../main/widget/profile/row_profile_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "settings".tr(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          children: [
            RowProfileWidget(
              icon: IconAssets.userIcon,
              title: "notificationSettings".tr(),
              onTap: () {},
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            RowProfileWidget(
              icon: IconAssets.keyIcon,
              title: "passwordManager".tr(),
              onTap: () {
                Navigator.pushNamed(context, Routes.passwordManagerRoute);
              },
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            RowProfileWidget(
              icon: IconAssets.trashIcon,
              title: "deleteAccount".tr(),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
