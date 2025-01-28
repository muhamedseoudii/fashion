import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../../component/text_buttons/text_field_custom.dart';
import '../../resources/routes_manager.dart';
import '../../resources/styles_manager.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => AddCardViewState();
}

class AddCardViewState extends State<AddCardView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final cardKey = GlobalKey<FormState>();
    final TextEditingController cardNum = TextEditingController();
    final TextEditingController cardName = TextEditingController();
    final TextEditingController cardDate = TextEditingController();
    final TextEditingController cardCVC = TextEditingController();
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
            "Add Card",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Form(
            key: cardKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CreditCardWidget(
                  cardNumber: "4478 9996 5557 3697",
                  expiryDate: "22/8",
                  cardHolderName: "Kevin Power",
                  cvvCode: "2255",
                  showBackView: false,
                  onCreditCardWidgetChange: (CreditCardBrand brand) {},
                  bankName: 'National Bank',
                  cardBgColor: ColorManager.primary,
                  labelExpiredDate: "Expiry Date",
                  labelValidThru: 'Expiry Date',
                  labelCardHolder: 'CARD HOLDER',
                  cardType: CardType.visa,
                  isHolderNameVisible: true,
                  height: 207,
                  textStyle: AppTextStyles.mediumTitle14.copyWith(
                      fontWeight: FontWeight.w600, color: ColorManager.white),
                  isChipVisible: true,
                  isSwipeGestureEnabled: true,
                  animationDuration: Duration(milliseconds: 1000),
                  padding: 0,
                ),
                const SizedBox(height: 25),
                const Text(
                  "Card Holder Name",
                  style: AppTextStyles.mediumTitle14,
                ),
                const SizedBox(height: 8),
                TextFieldCustomEdit(
                  radius: 8,
                  readOnly: false,
                  onTap: () {},
                  validatorText: "Enter Card Holder Name",
                  textInputType: TextInputType.name,
                  controller: cardName,
                  fillColor: ColorManager.white,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Card Number",
                  style: AppTextStyles.mediumTitle14,
                ),
                const SizedBox(height: 8),
                TextFieldCustomEdit(
                  radius: 8,
                  readOnly: false,
                  onTap: () {},
                  validatorText: "Enter Card Number",
                  textInputType: TextInputType.number,
                  controller: cardNum,
                  fillColor: ColorManager.white,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Expiry Date",
                          style: AppTextStyles.mediumTitle14,
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: 170,
                          child: TextFieldCustomEdit(
                            radius: 8,
                            readOnly: false,
                            onTap: () {},
                            validatorText: "Enter Expiry Date",
                            textInputType: TextInputType.datetime,
                            controller: cardDate,
                            fillColor: ColorManager.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CVV",
                          style: AppTextStyles.mediumTitle14,
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: 170,
                          child: TextFieldCustomEdit(
                            radius: 8,
                            readOnly: false,
                            onTap: () {},
                            validatorText: "Enter CVV",
                            textInputType: TextInputType.number,
                            controller: cardCVC,
                            fillColor: ColorManager.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      value: isChecked,
                      activeColor: ColorManager.primary,
                      checkColor: Colors.white,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      "Save Card",
                      style: AppTextStyles.mediumTitle14,
                    ),
                  ],
                )
              ],
            ),
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
                      text: "Add Card",
                      textSize: 16,
                      textColor: ColorManager.white,
                      buttonColor: ColorManager.primary,
                      onClick: () {
                        Navigator.pushNamed(context, Routes.checkoutRoute);
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
