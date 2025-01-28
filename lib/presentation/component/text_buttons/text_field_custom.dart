import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class TextFieldCustomEdit extends StatelessWidget {
  final String? hintText, labelText;
  final TextEditingController controller;
  final String validatorText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final double radius;
  final Color? fillColor;
  final TextStyle? style;
  final void Function()? onTap;
  final bool readOnly;

  const TextFieldCustomEdit(
      {super.key,
      this.hintText,
      required this.controller,
      required this.validatorText,
      this.textInputType,
      this.suffixIcon,
      this.prefixIcon,
      this.maxLines,
      this.labelText,
      this.fillColor,
      this.style,
      this.onTap,
      this.readOnly = false, required this.radius});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      keyboardType: textInputType,
      cursorColor: ColorManager.primary,
      maxLines: maxLines,
      style: style,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color(0xff9CA3AF),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff9CA3AF),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintMaxLines: 1,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        filled: true,
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(color: Color(0xFF704F38), width: 2),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(color: Color(0xffFF472B)),
        ),
        focusedErrorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(color: Color(0xffFF472B), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Color(0xffD9D9D9)),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validatorText;
        }
        return null;
      },
    );
  }
}

class TextFieldEditPass extends StatelessWidget {
  final String? hintText, labelText;
  final Widget? prefixIcon;
  final void Function()? onClick;
  final TextEditingController textController;
  final Widget icon;
  final bool obscureText;
  final Color? fillColor;
  final TextStyle? style;

  const TextFieldEditPass(
      {super.key,
      this.hintText,
      required this.onClick,
      required this.textController,
      required this.icon,
      required this.obscureText,
      this.labelText,
      this.prefixIcon,
      this.fillColor,
      this.style});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      keyboardType: TextInputType.visiblePassword,
      style: style,
      cursorColor: ColorManager.primary,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color(0xff9CA3AF),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff9CA3AF),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        fillColor: fillColor,
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: IconButton(
          icon: icon,
          onPressed: onClick,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          borderSide: BorderSide(color: Color(0xFF704F38), width: 2),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          borderSide: BorderSide(color: Color(0xffFF472B)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          borderSide: BorderSide(color: Color(0xffFF472B), width: 2),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          borderSide: BorderSide(color: Color(0xffD9D9D9)),
        ),
      ),
      obscureText: obscureText,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'enterPassword'.tr();
        } else if ((value?.length ?? 0) < 6) {
          return 'passwordCharacters'.tr();
        }
        return null;
      },
    );
  }
}

class TextFieldEditPassConfirm extends StatelessWidget {
  final String? hintText;
  final void Function()? onClick;
  final TextEditingController textController;
  final Widget icon;
  final Color? fillColor;
  final bool obscureText;
  final Widget? prefixIcon;
  final TextEditingController validateController;

  const TextFieldEditPassConfirm(
      {super.key,
       this.hintText,
      required this.onClick,
      required this.textController,
      required this.icon,
      required this.obscureText,
      required this.validateController,
      this.prefixIcon, this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      keyboardType: TextInputType.visiblePassword,
      cursorColor: ColorManager.primary,
      // style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff9CA3AF),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        fillColor: fillColor,
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: IconButton(
          icon: icon,
          onPressed: onClick,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          borderSide: BorderSide(color: Color(0xFF704F38), width: 2),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          borderSide: BorderSide(color: Color(0xffFF472B)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          borderSide: BorderSide(color: Color(0xffFF472B), width: 2),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          borderSide: BorderSide(color: Color(0xffBDBDBD)),
        ),
      ),
      obscureText: obscureText,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'enterPassword'.tr();
        } else if ((value?.length ?? 0) < 6) {
          return 'passwordCharacters'.tr();
        } else if (value != validateController.text) {
          return "bothPassword".tr();
        }
        return null;
      },
    );
  }
}
