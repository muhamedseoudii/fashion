import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const largeTitleGrey40 = TextStyle(
      fontSize: 40, fontWeight: FontWeight.w700, color: Color(0xffBAB6B6));
  static const largeTitleWhite35 =
      TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white);
  static const largeTitle32 =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w600);
  static const largeTitle28 =
      TextStyle(fontSize: 28, fontWeight: FontWeight.w600);
  static const largeTitle25 =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w500);
  static const largeTitle24 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w500);
  static const largeTitle23White =
      TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w700);
  static const largeTitle22 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w500);
  static const largeTitleBrown22 = TextStyle(
      fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xff704F38));
  static const largeTitleGrey21 = TextStyle(
      fontSize: 21, fontWeight: FontWeight.w400, color: Color(0xff000000));
  static const largeTitle20 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  static const largeTitleBrown20 = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xff704F38));
  static const largeTitleWhite22 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white);
  static const largeTitleWhite25 =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white);
  static const largeTitleWhite30 =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white);
  static const largeTitleBlack22 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black);
  static const largeTitleWhite20 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white);
  static const largeTitleDarkBlue21 = TextStyle(
      fontSize: 21.61, fontWeight: FontWeight.w700, color: Color(0xff1A2C42));
  static const largeTitle18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  static const largeTitleNavy18 = TextStyle(
      fontSize: 18, color: Color(0xff1A2C42), fontWeight: FontWeight.w700);
  static const largeTitleBlack18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black);
  static const largeTitlePurple18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff3F1D89));
  static const largeTitleGrey18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xffC4C4C4));
  static const largeTitleNoOverFlow14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w700);
  static const largeTitleGrey16 = TextStyle(
    fontSize: 16,
    color: Color(0xff6B6B6B),
    fontWeight: FontWeight.w400,
  );
  static const largeTitleNavy16 = TextStyle(
    fontSize: 16,
    color: Color(0xff192126),
    fontWeight: FontWeight.w500,
  );
  static const largeTitleLightGrey16 = TextStyle(
    fontSize: 16,
    color: Color(0xff5A5A5A),
    fontWeight: FontWeight.w400,
  );
  static const largeTitleBrown16 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff704F38));
  static const largeTitle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const largeTitleBlack17 = TextStyle(
    color: Colors.black,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static const largeTitleLime16 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff00FF7F));
  static const largeTitleBlack16 = TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis);
  static const largeTitle15 = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis);
  static const largeTitleGrey15 = TextStyle(
      fontSize: 15,
      color: Color(0xff949494),
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis);
  static const largeTitleWhite16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      overflow: TextOverflow.ellipsis);
  static const largeTitleLineThrough16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
      decoration: TextDecoration.lineThrough);
  static const mediumRedTitle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Color(0xffe61f34),
  );
  static const mediumGreyTitle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Color(0xff8A8A8E),
    overflow: TextOverflow.fade,
  );
  static const mediumTitle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const mediumAmberTitle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Colors.amber,
  );

  static const mediumGreyTitle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xff8A8A8E),
    overflow: TextOverflow.fade,
  );
  static const mediumWhiteTitle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    overflow: TextOverflow.fade,
  );

  static const mediumTitle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const mediumTitleBrown14 = TextStyle(
    fontSize: 14,
    color: Color(0xff704F38),
    fontWeight: FontWeight.w600,
  );
  static const mediumTitleLime14 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff00FF7F));
  static const mediumTitleGrey14 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff797979));
  static const mediumTitleWhite14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);
  static const mediumTitleBlue14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xff3F1D89),
  );
  static const mediumTitleOrange14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Color(0xFFFF6735),
  );
  static const mediumTitleRed12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Color(0xffe61f34),
  );
  static const mediumTitle12 =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w600);
  static const smallTitle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const smallTitleWhite12 = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static const smallTitleBrown12 = TextStyle(
    color: Color(0xff704F38),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static const smallTitleGrey12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xFF797979),
  );
  static const smallTitleWhite11 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const mediumTitleBlack14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);
  static const mediumTitle17 = TextStyle(
      fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff79A3D3));

  static const floatingTitle16 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff22292E));
  static const mediumTitleBlue16 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff6391F4));
  static const largeTitleLightGrey12 = TextStyle(
    fontSize: 12,
    color: Color(0xff797979),
    fontWeight: FontWeight.w400,
  );
  static const smallTitleWhite9 = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const smallTitleGrey10 = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w400,
    color: Color(0xff939597),
  );
  static const smallTitleBlack9 = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
}

// TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
//   return TextStyle(
//       fontSize: fontSize,
//       fontWeight: fontWeight,
//       color: color,
//       fontFamily: FontConstants.fontFamily);
// }
//
// // light
// TextStyle getLightStyle12({double fontSize = FontSize.s12, Color? color}) {
//   return _getTextStyle(fontSize, FontWeightManager.light, color!);
// }
//
// // regular
// TextStyle getRegularStyle14({double fontSize = FontSize.s14, Color? color}) {
//   return _getTextStyle(fontSize, FontWeightManager.regular, color!);
// }
//
// // medium
// TextStyle getMediumStyle16({double fontSize = FontSize.s16, Color? color}) {
//   return _getTextStyle(fontSize, FontWeightManager.medium, color!);
// }
//
// // semiBold
// TextStyle getSemiBoldStyle20({double fontSize = FontSize.s20, Color? color}) {
//   return _getTextStyle(fontSize, FontWeightManager.semiBold, color!);
// }
//
// // bold
// TextStyle getBoldStyle22({double fontSize = FontSize.s22, Color? color}) {
//   return _getTextStyle(fontSize, FontWeightManager.semiBold, color!);
// }
