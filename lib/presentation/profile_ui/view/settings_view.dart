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
        title: const Text(
          "Settings",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          children: [
            RowProfileWidget(
              icon: IconAssets.userIcon,
              title: "Notification Settings",
              onTap: () {},
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            RowProfileWidget(
              icon: IconAssets.keyIcon,
              title: "Password Manager",
              onTap: () {
                Navigator.pushNamed(context, Routes.passwordManagerRoute);
              },
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            RowProfileWidget(
              icon: IconAssets.trashIcon,
              title: "Delete Account",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
