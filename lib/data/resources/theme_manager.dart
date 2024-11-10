import 'package:fashion/data/resources/color_manager.dart';
import 'package:flutter/material.dart';

import 'font_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main color
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primary,
    primaryColorDark: ColorManager.primary,
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.primary,
    fontFamily: FontConstants.fontFamily,
    scaffoldBackgroundColor: ColorManager.white,

    //cardView Theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.offWhite,
        elevation: AppSize.s4),

    //appBar theme
    appBarTheme: AppBarTheme(
      // iconTheme: const IconThemeData(color: Colors.white),
      toolbarHeight: 90,
      centerTitle: true,
      color: ColorManager.white,
      elevation: AppSize.s0,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: TextStyle(
          fontFamily: FontConstants.fontFamily,
          fontSize: FontSize.s16,
          color: ColorManager.black,
          fontWeight: FontWeight.w500),
    ),

    //button theme
    // buttonTheme: ButtonThemeData(
    //     shape: const StadiumBorder(),
    //
    //     disabledColor: ColorManager.grey,
    //     buttonColor: ColorManager.primary,
    //     splashColor: ColorManager.lightPrimary),
    //
    // //elevatedButton theme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //       textStyle: AppTextStyles.mediumTitle17,
    //       backgroundColor: ColorManager.primary,
    //       shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(AppSize.s12)),
    //       shadowColor: ColorManager.lightPrimary),
    // ),

    //text theme
    textTheme: const TextTheme(
      displayLarge: AppTextStyles.largeTitle22,
      headlineLarge: AppTextStyles.largeTitle20,
      titleMedium: AppTextStyles.mediumTitle17,
      bodyMedium: AppTextStyles.mediumTitle14,
    ),

    //tab bar theme
    tabBarTheme: TabBarTheme(
      labelStyle: TextStyle(
          fontFamily: FontConstants.fontFamily,
          fontSize: FontSize.s16,
          fontWeight: FontWeight.w600),
      dividerColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: ColorManager.primary,
      labelPadding: const EdgeInsets.all(1),
      unselectedLabelStyle: TextStyle(
          fontFamily: FontConstants.fontFamily,
          fontSize: FontSize.s16,
          fontWeight: FontWeight.w600),
      indicatorColor: ColorManager.primary,
    ),
    //input decoration theme(textFormField)
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: const EdgeInsets.all(AppPadding.p8),
    //   hintStyle: AppTextStyles.mediumGreyTitle16,
    //   labelStyle: AppTextStyles.mediumGreyTitle16,
    //   errorStyle: AppTextStyles.mediumRedTitle16,
    //   enabledBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppSize.s10),
    //     borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s2),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppSize.s10),
    //     borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s2),
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppSize.s10),
    //     borderSide: BorderSide(color: ColorManager.error, width: AppSize.s2),
    //   ),
    //   focusedErrorBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppSize.s10),
    //     borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s2),
    //   ),
    // ),
  );
}
