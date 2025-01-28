import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/styles_manager.dart';

class SelectableWishlistWidget extends StatefulWidget {
  const SelectableWishlistWidget({super.key});

  @override
  State<SelectableWishlistWidget> createState() =>
      _SelectableWishlistWidgetState();
}

class _SelectableWishlistWidgetState extends State<SelectableWishlistWidget> {
  List name = [
    {"title": "all".tr()},
    {"title": "Jacket".tr()},
    {"title": "Shirt".tr()},
    {"title": "Pant".tr()},
    {"title": "T-Shirt".tr()},
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
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
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? ColorManager.primary
                    : ColorManager.white,
                borderRadius: BorderRadius.circular(30),
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