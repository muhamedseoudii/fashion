import 'package:fashion/data/resources/assets_manager.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/routes_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/appbar_widget/appbar_widget.dart';
import '../widget/profile/row_profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: ColorManager.grey1),
                      ),
                      SvgPicture.asset(IconAssets.editIcon),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text("Muhammed Seoudii",
                    style: AppTextStyles.largeTitle18),
                const SizedBox(height: 29),
                RowProfileWidget(
                  icon: IconAssets.userIcon,
                  title: "Your profile",
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.cardIcon,
                  title: "Payment Methods",
                  onTap: () {
                    Navigator.pushNamed(context, Routes.paymentRoute);
                  },
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.clipboardTextIcon,
                  title: "My Orders",
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.settingIcon,
                  title: "Settings",
                  onTap: () {
                    Navigator.pushNamed(context, Routes.settingsRoute);
                  },
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.infoCircleIcon,
                  title: "Help Center",
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.lockIcon,
                  title: "Privacy Policy",
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.profileAddIcon,
                  title: "Invites Friends",
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.logoutIcon,
                  title: "Log out",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
