import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../presentation/resources/color_manager.dart';
import '../../../../presentation/resources/styles_manager.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List contact = [
      {
        "icon": IconAssets.headphonesIcon,
        "title": "ustomer Service",
        "desc": "19995"
      },
      {
        "icon": IconAssets.whatsappIcon,
        "title": "WhatsApp",
        "desc": "(480) 555-0103"
      },
      {"icon": IconAssets.webIcon, "title": "Website", "desc": "fashion.com"},
      {
        "icon": IconAssets.facebookIcon,
        "title": "Facebook",
        "desc": "facebook.com"
      },
      {
        "icon": IconAssets.twitterIcon,
        "title": "Twitter",
        "desc": "twitter.com"
      },
      {
        "icon": IconAssets.instagramIcon,
        "title": "Instagram",
        "desc": "instagram.com"
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ContactUsExpansionTile(
                    leading: SvgPicture.asset(contact[index]["icon"]),
                    title: contact[index]["title"],
                    desc: contact[index]["desc"],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: 5),
          )
        ],
      ),
    );
  }
}

class ContactUsExpansionTile extends StatelessWidget {
  final String title, desc;
  final Widget? leading;

  const ContactUsExpansionTile(
      {super.key, required this.title, required this.desc, this.leading});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.fromBorderSide(BorderSide(color: ColorManager.grey1))),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          backgroundColor: ColorManager.white,
          collapsedBackgroundColor:  ColorManager.white,
          iconColor: ColorManager.primary,
          collapsedIconColor: ColorManager.black,
          leading: leading,
          title: Text(title, style: AppTextStyles.smallTitle12),
          children: [
            Divider(
              color: ColorManager.grey,
              endIndent: 28,
              indent: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorManager.primary,
                    radius: 3,
                  ),
                  const SizedBox(width: 10),
                  Text(desc, style: AppTextStyles.smallTitleGrey12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
