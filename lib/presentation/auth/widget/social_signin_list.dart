import 'package:fashion/data/resources/color_manager.dart';
import 'package:flutter/material.dart';

class SocialSigninList extends StatelessWidget {
  final String icon, icon1, icon2;

  const SocialSigninList({
    super.key,
    required this.icon,
    required this.icon1,
    required this.icon2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: ColorManager.white,
                border: const Border.fromBorderSide(
                    BorderSide(color: Color(0xffE0E0E0)))),
            child: Image.asset(icon),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: ColorManager.white,
                border: const Border.fromBorderSide(
                    BorderSide(color: Color(0xffE0E0E0)))),
            child: Image.asset(icon1),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: ColorManager.white,
                border: const Border.fromBorderSide(
                    BorderSide(color: Color(0xffE0E0E0)))),
            child: Image.asset(icon2),
          ),
        ],
      ),
    );
  }
}
