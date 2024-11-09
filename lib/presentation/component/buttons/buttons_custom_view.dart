import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilledButtomEdit extends StatelessWidget {
  final String text;
  final Color buttonColor, textColor;
  final double textSize;
  final void Function()? onClick;

  const FilledButtomEdit({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textSize,
    required this.textColor,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: onClick,
        style: FilledButton.styleFrom(
          // side: const BorderSide(color: Color(0xffD8DADC)),
          backgroundColor: buttonColor,
          minimumSize: const Size(377, 60),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class FilledButtomWithIconEdit extends StatelessWidget {
  final String text;
  final Color buttonColor, textColor;
  final double textSize;
  final Widget widget;
  final void Function()? onClick;

  const FilledButtomWithIconEdit({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textSize,
    required this.textColor,
    required this.onClick,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: onClick,
        style: FilledButton.styleFrom(
          // side: const BorderSide(color: Color(0xffD8DADC)),
          backgroundColor: buttonColor,
          minimumSize: const Size(377, 60),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: textSize,
                fontWeight: FontWeight.w700,
              ),
            ),
            widget,
          ],
        ),
      ),
    );
  }
}

class ElevatedButtomEdit extends StatelessWidget {
  final String text;
  final double buttonHeight, buttonWidth;
  final void Function()? onClick;

  const ElevatedButtomEdit({
    super.key,
    required this.text,
    required this.onClick,
    required this.buttonHeight,
    required this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side:
                  BorderSide(color: const Color(0xff1E2432).withOpacity(0.7))),
        ),
        onPressed: onClick,
        child: Text(
          text,
          style: AppTextStyles.largeTitleBlack17,
        ),
      ),
    );
  }
}

// class FilledButtomEdit extends StatelessWidget {
//   final String text, icon;
//   final Color buttonColor, textColor;
//   final double textSize;
//   final void Function()? onClick;
//
//   const FilledButtomEdit(
//       {super.key,
//         required this.text,
//         required this.buttonColor,
//         required this.textSize,
//         required this.textColor,
//         required this.onClick,
//         required this.icon});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FilledButton(
//         onPressed: onClick,
//         style: FilledButton.styleFrom(
//           side: const BorderSide(color: Color(0xffD8DADC)),
//           backgroundColor: buttonColor,
//           minimumSize: const Size(353, 52),
//         ),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               SvgPicture.asset(
//                 icon,
//                 fit: BoxFit.scaleDown,
//               ),
//               Text(
//                 text,
//                 style: TextStyle(
//                   color: textColor,
//                   fontSize: textSize,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
