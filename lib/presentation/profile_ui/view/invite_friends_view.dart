import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class InviteFriendsView extends StatelessWidget {
  const InviteFriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "invitesFriends".tr(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundColor: ColorManager.grey1, radius: 20),
                      title: const Text(
                        "Robert Fox",
                        style: AppTextStyles.mediumTitle14,
                      ),
                      subtitle: const Text(
                        "702.555.0122",
                        style: AppTextStyles.smallTitleGrey12,
                      ),
                      trailing: Container(
                        alignment: Alignment.center,
                        width: 48,
                        height: 29,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(78),
                            color: ColorManager.primary),
                        child: const Text(
                          "Invite",
                          style: AppTextStyles.smallTitleWhite12,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                        endIndent: 20,
                        indent: 20,
                      ),
                  itemCount: 5),
            )
          ],
        ),
      ),
    );
  }
}
