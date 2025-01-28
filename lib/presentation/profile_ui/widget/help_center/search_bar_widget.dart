import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../presentation/resources/color_manager.dart';

class SearchBarHelpWidget extends StatelessWidget {
  final String image;
  final TextEditingController controller;
  final String? hintText;
  final Color? fillColor;
  final void Function()? onClick, onTap, onCloseTap;
  final void Function(String)? onChange;

  const SearchBarHelpWidget(
      {super.key,
      required this.image,
      this.hintText,
      this.onClick,
      required this.controller,
      this.onChange,
      this.fillColor,
      this.onTap,
      this.onCloseTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.primary,
      controller: controller,
      keyboardType: TextInputType.text,
      onChanged: onChange,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff9CA3AF),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintMaxLines: 1,
        prefixIcon: InkWell(
            onTap: onCloseTap,
            borderRadius: BorderRadius.circular(10),
            child: SvgPicture.asset(
              image,
              fit: BoxFit.scaleDown,
              colorFilter:
                  ColorFilter.mode(ColorManager.primary, BlendMode.srcIn),
            )),
        fillColor: fillColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: ColorManager.primary, width: 2),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Color(0xffFF472B)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Color(0xffFF472B), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xffD9D9D9),
          ),
        ),
      ),
    );
  }
}
