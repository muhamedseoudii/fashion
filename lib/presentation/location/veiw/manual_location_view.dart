import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/assets_manager.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/search_form_field.dart';

class ManualLocationView extends StatelessWidget {
  const ManualLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ColorManager.white,
                        border: Border.fromBorderSide(
                            BorderSide(color: ColorManager.grey1))),
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                Text(
                  textAlign: TextAlign.center,
                  "enterYourLocation".tr(),
                  style: AppTextStyles.largeTitle16,
                ),
              ],
            ),
            const SizedBox(height: 24),
            SearchTextField(
              fillColor: ColorManager.white,
              controller: searchController,
              hintText: 'enterYourLocation'.tr(),
              onClick: () {
                searchController.clear();
              },
              onChange: (value) {
                // if (value.isNotEmpty) {
                //   searchController.fetchAll(value);
                // }
              },
            ),
            const SizedBox(height: 26),
            Row(
              children: [
                SvgPicture.asset(IconAssets.directUpIcon),
                const SizedBox(width: 20),
                Text(
                  textAlign: TextAlign.center,
                  "useCurrentLocation".tr(),
                  style: AppTextStyles.largeTitle16,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(thickness: 0.5),
            const SizedBox(height: 16),
            Text(
              "searchResult".tr(),
              style: AppTextStyles.smallTitleGrey12,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => CategoryView(
                      //       sourceAddress: searchLocationFrom.text,
                      //       destinationAddress: _placeList[index][
                      //       "description"], // Pass the selected destination address
                      //     ),
                      //   ),
                      // );
                    },
                    child: ListTile(
                      // tileColor: Colors.red,
                      leading:
                          SvgPicture.asset(IconAssets.directUpIcon, height: 20),
                      title: const Text(
                        textAlign: TextAlign.start,
                        "new location",
                        // _placeList[index]["description"],
                        style: AppTextStyles.mediumTitle14,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const Divider(indent: 5, endIndent: 5, thickness: 0.5),
                itemCount: 5,
                // itemCount: _placeList.length,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
