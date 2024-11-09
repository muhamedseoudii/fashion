import 'package:fashion/data/resources/assets_manager.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color? fillColor;
  final void Function()? onClick;
  final void Function(String)? onChange;
  final Widget? suffixIcon;

  const SearchTextField(
      {super.key,
      required this.hintText,
      this.onClick,
      required this.controller,
      this.onChange,
      this.fillColor,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      onChanged: onChange,
      cursorColor: ColorManager.primary,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff9CA3AF),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintMaxLines: 1,
        prefixIcon: SvgPicture.asset(
          IconAssets.searchIcon,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(ColorManager.primary, BlendMode.srcIn),
        ),
        suffixIcon: suffixIcon,
        // suffixIcon: IconButton(
        //   icon: SvgPicture.asset(IconAssets.closeIcon),
        //   onPressed: onClick,
        // ),
        fillColor: fillColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: ColorManager.primary, width: 2),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Color(0xffFF472B)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Color(0xffFF472B), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : const Color(0xffF5F5F5),
          ),
        ),
      ),
    );
  }
}
