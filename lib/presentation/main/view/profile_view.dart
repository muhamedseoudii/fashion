import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/app/app_root.dart';
import 'package:fashion/data/resources/assets_manager.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/routes_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../widget/profile/row_profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "profile".tr(),
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
                  title: "yourProfile".tr(),
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.cardIcon,
                  title: "paymentMethods".tr(),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.paymentRoute);
                  },
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.clipboardTextIcon,
                  title: "myOrders".tr(),
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.settingIcon,
                  title: "settings".tr(),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.settingsRoute);
                  },
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.infoCircleIcon,
                  title: "helpCenter".tr(),
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.lockIcon,
                  title: "privacyPolicy".tr(),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.privacyRoute);
                  },
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.profileAddIcon,
                  title: "invitesFriends".tr(),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.inviteFriendsRoute);
                  },
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                RowProfileWidget(
                  icon: IconAssets.logoutIcon,
                  title: "logout".tr(),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 24),
                          height: 250,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("logout".tr(),
                                  style: AppTextStyles.largeTitle16),
                              const SizedBox(height: 12),
                              const Divider(),
                              const SizedBox(height: 12),
                              Text("Are you sure you want to log out?".tr(),
                                  style: AppTextStyles.mediumGreyTitle14),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 158,
                                    height: 48,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(78),
                                        ),
                                        side: BorderSide(
                                          color: ColorManager.primary,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(
                                            context); // Close the bottom sheet
                                      },
                                      child: const Text(
                                        "Cancel",
                                        style: AppTextStyles.mediumTitleBrown14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 158,
                                    height: 48,
                                    child: FilledButtomEdit(
                                      text: "Yes, Logout",
                                      textSize: 14,
                                      textColor: ColorManager.white,
                                      buttonColor: ColorManager.primary,
                                      onClick: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
