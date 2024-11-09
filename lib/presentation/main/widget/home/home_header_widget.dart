import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/resources/assets_manager.dart';
import '../../../../data/resources/styles_manager.dart';

class HomeHeaderWidget extends StatefulWidget {
  const HomeHeaderWidget({super.key});

  @override
  State<HomeHeaderWidget> createState() => _HomeHeaderWidgetState();
}

class _HomeHeaderWidgetState extends State<HomeHeaderWidget> {
  final List<String> locations = [
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
    'Phoenix'
  ];

  // Variable to store the selected location
  String? selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("location".tr(), style: AppTextStyles.smallTitleGrey12),
            Row(
              children: [
                SvgPicture.asset(IconAssets.locationIcon),
                const SizedBox(width: 8),
                // Custom Dropdown Button
                DropdownButton<String>(
                  style: AppTextStyles.mediumTitleBlack14,
                  hint: Text("Choose a location".tr(),
                      style: AppTextStyles.mediumTitle14),
                  value: selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      selectedLocation = newValue;
                    });
                  },
                  items: locations
                      .map<DropdownMenuItem<String>>((String location) {
                    return DropdownMenuItem<String>(
                      value: location,
                      child: Text(location),
                    );
                  }).toList(),
                  underline: const SizedBox.shrink(),
                  icon: SvgPicture.asset(IconAssets.dropDownIcon),
                  dropdownColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
        SvgPicture.asset(IconAssets.notificationIcon),
      ],
    );
  }
}
