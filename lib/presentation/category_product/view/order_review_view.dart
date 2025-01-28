import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/category_product/widget/order_review/order_review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../../component/text_buttons/text_field_custom.dart';
import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/styles_manager.dart';

class OrderReviewView extends StatelessWidget {
  const OrderReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = TextEditingController();
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
            "Leave Review",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderReviewWidget(
                type: "Brown Jacket",
                desc: "Size : XL | Qty : 10pcs",
                price: "\$83.97",
                onTap: () {},
              ),
              SizedBox(height: 24),
              Divider(color: ColorManager.grey),
              SizedBox(height: 24),
              Center(
                  child: Text("How is your order?",
                      style: AppTextStyles.largeTitle24)),
              SizedBox(height: 24),
              Divider(color: ColorManager.grey),
              SizedBox(height: 24),
              Center(
                  child: Text("Your overall rating",
                      style: AppTextStyles.mediumTitleGrey14)),
              SizedBox(height: 24),
              Center(
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  tapOnlyMode: true,
                  updateOnDrag: true,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (context, _) =>
                      SvgPicture.asset(IconAssets.starIcon),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(height: 24),
              Divider(color: ColorManager.grey),
              SizedBox(height: 24),
              Text("Add detailed review", style: AppTextStyles.mediumTitle14),
              SizedBox(height: 8),
              TextFieldCustomEdit(
                radius: 8,
                maxLines: 4,
                hintText: 'Enter here',
                controller: commentController,
                fillColor: ColorManager.white,
                validatorText: 'Please Enter here',
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(IconAssets.cameraIcon),
                    SizedBox(width: 5),
                    Text("Add Photo", style: AppTextStyles.smallTitleBrown12),
                  ],
                ),
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
                boxShadow: [
                  BoxShadow(
                      color: ColorManager.grey,
                      offset: Offset(30, 0),
                      blurRadius: 26,
                      blurStyle: BlurStyle.outer,
                     )
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: ColorManager.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 48,
                      child: FilledButtonEdit(
                        text: "Cancel",
                        textSize: 16,
                        textColor: ColorManager.primary,
                        buttonColor: ColorManager.grey,
                        onClick: () {
                          Navigator.pushNamed(context, Routes.trackOrderRoute);
                          // Navigator.pushNamed(context, Routes.checkoutPaymentRoute);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 48,
                      child: FilledButtonEdit(
                        text: "Submit",
                        textSize: 16,
                        textColor: ColorManager.white,
                        buttonColor: ColorManager.primary,
                        onClick: () {
                          Navigator.pushNamed(context, Routes.trackOrderRoute);
                          // Navigator.pushNamed(context, Routes.checkoutPaymentRoute);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
