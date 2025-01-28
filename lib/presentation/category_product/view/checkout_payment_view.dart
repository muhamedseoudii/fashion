import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../../resources/routes_manager.dart';
import '../../resources/styles_manager.dart';

class CheckoutPaymentView extends StatefulWidget {
  const CheckoutPaymentView({super.key});

  @override
  State<CheckoutPaymentView> createState() => CheckoutPaymentViewState();
}

class CheckoutPaymentViewState extends State<CheckoutPaymentView> {
  String selectedPayment = "";

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
            "Payment Method",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("creditCard".tr(), style: AppTextStyles.largeTitle18),
              const SizedBox(height: 12),
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pushNamed(context, Routes.addCardRoute);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.fromBorderSide(
                        BorderSide(color: ColorManager.grey1)),
                    boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          color: ColorManager.grey,
                          blurRadius: 5,
                          offset: const Offset(1, 1))
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(IconAssets.cardFillIcon),
                          const SizedBox(width: 12),
                          Text("addCard".tr(),
                              style: AppTextStyles.mediumGreyTitle14),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: ColorManager.primary,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text("morePaymentOptions".tr(),
                  style: AppTextStyles.largeTitle18),
              const SizedBox(height: 12),
              Container(
                // padding: EdgeInsets.all(12 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.fromBorderSide(
                      BorderSide(color: ColorManager.grey1)),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.outer,
                        color: ColorManager.grey,
                        blurRadius: 5,
                        offset: const Offset(1, 1))
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: SvgPicture.asset(IconAssets.paypalIcon),
                        title: Text("Paypal",
                            style: AppTextStyles.mediumGreyTitle14),
                        trailing: Transform.scale(
                          scale: 1.4,
                          child: Radio<String>(
                            focusColor: ColorManager.grey,
                            activeColor: ColorManager.primary,
                            value: "Paypal",
                            groupValue: selectedPayment,
                            onChanged: (value) {
                              setState(() {
                                selectedPayment = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Divider(color: ColorManager.grey),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Image.asset(ImageAssets.apple),
                        title: Text("Apple Pay",
                            style: AppTextStyles.mediumGreyTitle14),
                        trailing: Transform.scale(
                          scale: 1.4,
                          child: Radio<String>(
                            focusColor: ColorManager.grey,
                            activeColor: ColorManager.primary,
                            value: "Apple Pay",
                            groupValue: selectedPayment,
                            onChanged: (value) {
                              setState(() {
                                selectedPayment = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Divider(color: ColorManager.grey),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Image.asset(ImageAssets.google),
                        title: Text("Google Pay",
                            style: AppTextStyles.mediumGreyTitle14),
                        trailing: Transform.scale(
                          scale: 1.4,
                          child: Radio<String>(
                            focusColor: ColorManager.grey,
                            activeColor: ColorManager.primary,
                            value: "Google Pay",
                            groupValue: selectedPayment,
                            onChanged: (value) {
                              setState(() {
                                selectedPayment = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: ColorManager.grey,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Column(
                  children: [
                    FilledButtonEdit(
                      text: "Confirm Payment",
                      textSize: 16,
                      textColor: ColorManager.white,
                      buttonColor: ColorManager.primary,
                      onClick: () {
                        Navigator.pushNamed(context, Routes.paymentSuccessRoute);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
