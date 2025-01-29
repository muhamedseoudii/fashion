import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/styles_manager.dart';

class SelectableBrandsList extends StatefulWidget {
  const SelectableBrandsList({super.key});

  @override
  State<SelectableBrandsList> createState() =>
      SelectableBrandsListState();
}

class SelectableBrandsListState extends State<SelectableBrandsList> {
  List name = [
    {"title": "all".tr()},
    {"title": "Nike".tr()},
    {"title": "Adidas".tr()},
    {"title": "Puma".tr()},
    {"title": "Zara".tr()},
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
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
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