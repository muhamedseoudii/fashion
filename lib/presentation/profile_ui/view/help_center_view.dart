import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';

import '../../../data/resources/assets_manager.dart';
import '../../../data/resources/color_manager.dart';
import '../widget/help_center/contact_us_view.dart';
import '../widget/help_center/faq_view.dart';
import '../widget/help_center/search_bar_widget.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "helpCenter".tr(),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: Column(
            children: [
              SearchBarHelpWidget(
                hintText: "search".tr(),
                image: IconAssets.searchIcon,
                onCloseTap: searchController.clear,
                fillColor: ColorManager.white,
                controller: searchController,
              ),
              const SizedBox(height: 20),
              TabBar(
                splashBorderRadius: BorderRadius.circular(100),
                 labelStyle: AppTextStyles.largeTitleBrown16,
                unselectedLabelStyle: AppTextStyles.largeTitleGrey16,
                indicatorColor: ColorManager.primary,
                  dividerColor: ColorManager.grey1,
                  indicator: UnderlineTabIndicator(
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100)),
                    borderSide: BorderSide(color: ColorManager.primary, width: 4.0),
                  ),
                  tabs: const [
                Tab(text: 'FAQ'),
                Tab(text: 'Contact Us'),
              ]),
              const Expanded(
                child: TabBarView(
                  children: [
                    FAQView(),
                    ContactUsView()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
