import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../../resources/routes_manager.dart';
import '../../resources/styles_manager.dart';

class ShippingAddressView extends StatefulWidget {
  const ShippingAddressView({super.key});

  @override
  State<ShippingAddressView> createState() => _ShippingAddressViewState();
}

class _ShippingAddressViewState extends State<ShippingAddressView> {
  String selectedAddress = "Home";

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
            "Shipping Address",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SvgPicture.asset("assets/icons/locationEmpty.svg"),
                ),
                title: Text("Home", style: AppTextStyles.mediumTitle14),
                subtitle: Text("1901 Thornridge Cir. Shiloh, Hawaii 81063",
                    style: AppTextStyles.smallTitle12),
                trailing: Transform.scale(
                  scale: 1.4,
                  child: Radio<String>(
                    activeColor: ColorManager.primary,
                    value: "Home",
                    groupValue: selectedAddress,
                    onChanged: (value) {
                      setState(() {
                        selectedAddress = value!;
                      });
                    },
                  ),
                ),
              ),
              Divider(color: ColorManager.grey),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SvgPicture.asset("assets/icons/locationEmpty.svg"),
                ),
                title: Text("Office", style: AppTextStyles.mediumTitle14),
                subtitle: Text(
                    "4517 Washington Ave. Manchester, Kentucky 39495",
                    style: AppTextStyles.smallTitle12),
                trailing: Transform.scale(
                  scale: 1.4,
                  child: Radio<String>(
                    activeColor: ColorManager.primary,
                    value: "Office",
                    groupValue: selectedAddress,
                    onChanged: (value) {
                      setState(() {
                        selectedAddress = value!;
                      });
                    },
                  ),
                ),
              ),
              Divider(color: ColorManager.grey),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SvgPicture.asset("assets/icons/locationEmpty.svg"),
                ),
                title:
                    Text("Parent’s House", style: AppTextStyles.mediumTitle14),
                subtitle: Text("8502 Preston Rd. Inglewood, Maine 98380",
                    style: AppTextStyles.smallTitle12),
                trailing: Transform.scale(
                  scale: 1.4,
                  child: Radio<String>(
                    activeColor: ColorManager.primary,
                    value: "Parent’s House",
                    groupValue: selectedAddress,
                    onChanged: (value) {
                      setState(() {
                        selectedAddress = value!;
                      });
                    },
                  ),
                ),
              ),
              Divider(color: ColorManager.grey),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SvgPicture.asset("assets/icons/locationEmpty.svg"),
                ),
                title:
                    Text("Friend’s House", style: AppTextStyles.mediumTitle14),
                subtitle: Text("2464 Royal Ln. Mesa, New Jersey 45463",
                    style: AppTextStyles.smallTitle12),
                trailing: Transform.scale(
                  scale: 1.4,
                  child: Radio<String>(
                    activeColor: ColorManager.primary,
                    value: "Friend’s House",
                    groupValue: selectedAddress,
                    onChanged: (value) {
                      setState(() {
                        selectedAddress = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 75, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorManager.grey,
                  border: DashedBorder.fromBorderSide(
                    dashLength: 5,
                    side: BorderSide(color: ColorManager.primary, width: 1),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: ColorManager.primary,
                    ),
                    SizedBox(width: 5),
                    Text("Add New Shipping Address",
                        style: AppTextStyles.smallTitleBrown12),
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
                      text: "Apply",
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
