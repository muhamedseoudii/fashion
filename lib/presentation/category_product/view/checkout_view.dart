import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../../resources/routes_manager.dart';
import '../../resources/styles_manager.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

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
          "Checkout",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Shipping Address", style: AppTextStyles.largeTitle16),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              horizontalTitleGap: -2,
              leading: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SvgPicture.asset(IconAssets.locationIcon),
                  ),
                ],
              ),
              title: Text("Home", style: AppTextStyles.mediumTitle14),
              subtitle: Text("1901 Thornridge Cir. Shiloh, Hawaii 81063",
                  style: AppTextStyles.smallTitle12),
              trailing: InkWell(
               onTap: () {
                 Navigator.pushNamed(context, Routes.shippingAddressRoute);
               },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    border: Border.fromBorderSide(
                        BorderSide(color: ColorManager.grey)),
                  ),
                  child: Text("CHANGE",
                      style: AppTextStyles.smallTitleBrown12
                          .copyWith(fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            Divider(color: ColorManager.grey),
            SizedBox(height: 20),
            Text("Choose Shipping Type", style: AppTextStyles.largeTitle16),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              horizontalTitleGap: -2,
              leading: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Icon(
                      CupertinoIcons.cube_box,
                      size: 18,
                    ),
                  ),
                ],
              ),
              title: Text("Economy", style: AppTextStyles.mediumTitle14),
              subtitle: Text("Estimated Arrival  25 August 2023",
                  style: AppTextStyles.smallTitle12),
              trailing: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.chooseShippingRoute);
                },
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      border: Border.fromBorderSide(
                          BorderSide(color: ColorManager.grey)),
                    ),
                    child: Text("CHANGE",
                        style: AppTextStyles.smallTitleBrown12
                            .copyWith(fontWeight: FontWeight.w500))),
              ),
            ),
            Divider(color: ColorManager.grey),
            SizedBox(height: 24),
            Text("Order List", style: AppTextStyles.largeTitle16),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          alignment: Alignment.topRight,
                          height: 84,
                          width: 84,
                          decoration: BoxDecoration(
                              color: ColorManager.grey1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Brown Jacket',
                                style: AppTextStyles.mediumTitle14),
                            SizedBox(height: 6),
                            Text("Size : XL",
                                style: AppTextStyles.smallTitleGrey12),
                            SizedBox(height: 6),
                            Text("\$83.97", style: AppTextStyles.mediumTitle14),
                          ],
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) =>
                      Divider(color: ColorManager.grey),
                  itemCount: 3),
            )
          ],
        ),
      ),
        bottomSheet: DraggableScrollableSheet(
          expand: false,
          snap: true,
          snapSizes: [0.12, 0.13],
          initialChildSize: 0.12,
          minChildSize: 0.12,
          // maxChildSize: 0.3,
          builder: (context, scrollController) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: ColorManager.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                child: Column(
                  children: [
                    FilledButtonEdit(
                      text: "Continue to Payment",
                      textSize: 16,
                      textColor: ColorManager.white,
                      buttonColor: ColorManager.primary,
                      onClick: () {
                        Navigator.pushNamed(context, Routes.trackOrderRoute);
                        // Navigator.pushNamed(context, Routes.checkoutPaymentRoute);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        )
    );
  }
}
