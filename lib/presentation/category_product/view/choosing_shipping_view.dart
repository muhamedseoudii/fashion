import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/buttons/buttons_custom_view.dart';
import '../../resources/routes_manager.dart';
import '../../resources/styles_manager.dart';

class ChoosingShippingView extends StatefulWidget {
  const ChoosingShippingView({super.key});

  @override
  State<ChoosingShippingView> createState() => ChoosingShippingViewState();
}

class ChoosingShippingViewState extends State<ChoosingShippingView> {
  String selectedAddress = "Economy";

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
            "Choosing Shipping",
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
                  child: Icon(
                    CupertinoIcons.cube_box,
                    size: 18,
                  ),
                ),
                title: Text("Economy", style: AppTextStyles.mediumTitle14),
                subtitle: Text("Estimated Arrival  25 August 2023",
                    style: AppTextStyles.smallTitle12),
                trailing: Transform.scale(
                  scale: 1.4,
                  child: Radio<String>(
                    activeColor: ColorManager.primary,
                    value: "Economy",
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
                  child: Icon(
                    CupertinoIcons.cube_box,
                    size: 18,
                  ),
                ),
                title: Text("Regular", style: AppTextStyles.mediumTitle14),
                subtitle: Text(
                    "Estimated Arrival  25 August 2023",
                    style: AppTextStyles.smallTitle12),
                trailing: Transform.scale(
                  scale: 1.4,
                  child: Radio<String>(
                    activeColor: ColorManager.primary,
                    value: "Regular",
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
                    Text("Cargo", style: AppTextStyles.mediumTitle14),
                subtitle: Text("Estimated Arrival  25 August 2023",
                    style: AppTextStyles.smallTitle12),
                trailing: Transform.scale(
                  scale: 1.4,
                  child: Radio<String>(
                    activeColor: ColorManager.primary,
                    value: "Cargo",
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
