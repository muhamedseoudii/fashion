import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../data/resources/color_manager.dart';
import '../../../../data/resources/styles_manager.dart';

class SelectableHelpContainerWidget extends StatefulWidget {
  const SelectableHelpContainerWidget({super.key});

  @override
  State<SelectableHelpContainerWidget> createState() => _SelectableHelpContainerWidgetState();
}

class _SelectableHelpContainerWidgetState extends State<SelectableHelpContainerWidget> {
  List name = [
    {"title": "all".tr()},
    {"title": "services".tr()},
    {"title": "general".tr()},
    {"title": "account".tr()},

  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? ColorManager.primary
                    : ColorManager.white,
                borderRadius: BorderRadius.circular(170),
                border: Border.all(
                  color: selectedIndex == index
                      ? ColorManager.primary
                      : Colors.grey,
                  width: 1,
                ),
              ),
              child: Text(
                name[index]["title"],
                style: selectedIndex == index
                    ? AppTextStyles.mediumWhiteTitle14
                    : AppTextStyles.mediumTitle14,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
      ),
    );
  }
}