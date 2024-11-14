import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:fashion/presentation/profile_ui/widget/help_center/selectable_help_widget.dart';
import 'package:flutter/material.dart';

class FAQView extends StatelessWidget {
  const FAQView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const SelectableHelpContainerWidget(),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(itemBuilder: (context, index) {
              return const FAQExpansionTile(
                title: "Can I track my order's delivery status?",
                desc:
                "Here is the answer to your question. You can provide any information you want as text here.",
              );
            }, separatorBuilder: (context, index) => const SizedBox(height: 10,), itemCount: 5),
          )
         
        ],
      ),
    );
  }
}

class FAQExpansionTile extends StatelessWidget {
  final String title, desc;

  const FAQExpansionTile({super.key, required this.title, required this.desc});

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
          title: Text(title,
              style: AppTextStyles.smallTitle12),
          children: [
            Divider(
              color: ColorManager.grey,
              endIndent: 28,
              indent: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                  desc,
                  style: AppTextStyles.smallTitleGrey12),
            ),
          ],
        ),
      ),
    );
  }
}
