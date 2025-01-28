import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/styles_manager.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SvgPicture.asset(
                IconAssets.arrowBackCircleIcon,
                fit: BoxFit.scaleDown,
              ),
            )),
        title: Text(
          "Track Order",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.topRight,
                  height: 84,
                  width: 84,
                  decoration: BoxDecoration(
                      color: ColorManager.grey1,
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Brown Jacket', style: AppTextStyles.mediumTitle14),
                    SizedBox(height: 6),
                    Text("Size : XL | | Qty : 10pcs",
                        style: AppTextStyles.smallTitleGrey12),
                    SizedBox(height: 6),
                    Text("\$83.97", style: AppTextStyles.mediumTitle14),
                  ],
                )
              ],
            ),
            const SizedBox(height: 24),
            Divider(color: ColorManager.grey1),
            const SizedBox(height: 20),
            Text('Order Details', style: AppTextStyles.largeTitle16),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Expected Delivery Date',
                    style: AppTextStyles.mediumTitleGrey14),
                Text(" 03 Sep 2023", style: AppTextStyles.mediumTitle14),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tracking ID', style: AppTextStyles.mediumTitleGrey14),
                Text("TRK452126542", style: AppTextStyles.mediumTitle14),
              ],
            ),
            const SizedBox(height: 20),
            Divider(color: ColorManager.grey1),
            const SizedBox(height: 20),
            Text('Order Status', style: AppTextStyles.largeTitle16),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(IconAssets.checkActiveIcon),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order Placed",
                                style: AppTextStyles.mediumTitle14),
                            // SizedBox(height: 5),
                            Text('23 Aug 2023, 04:25 PM',
                                style: AppTextStyles.mediumTitleGrey14),
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(IconAssets.clipboardTextIcon),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      color: ColorManager.primary, height: 60, width: 4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(IconAssets.checkActiveIcon),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("In Progress",
                                style: AppTextStyles.mediumTitle14),
                            // SizedBox(height: 5),
                            Text('23 Aug 2023, 03:54 PM',
                                style: AppTextStyles.mediumTitleGrey14),
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(IconAssets.cardIcon),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      color: ColorManager.grey, height: 60, width: 4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(IconAssets.checkInActiveIcon),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipped",
                                style: AppTextStyles.mediumTitle14),
                            // SizedBox(height: 5),
                            Text('Expected 02 Sep 2023',
                                style: AppTextStyles.mediumTitleGrey14),
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(IconAssets.webIcon),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      color: ColorManager.grey, height: 60, width: 4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(IconAssets.checkInActiveIcon),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Delivered",
                                style: AppTextStyles.mediumTitle14),
                            // SizedBox(height: 5),
                            Text('23 Aug 2023, 2023',
                                style: AppTextStyles.mediumTitleGrey14),
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(IconAssets.keyIcon),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
