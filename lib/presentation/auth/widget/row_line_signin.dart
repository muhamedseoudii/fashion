import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class RowLineSignin extends StatelessWidget {
  final String title;

  const RowLineSignin({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 80,
          height: 2,
          color: const Color(0xffE0E0E0),
        ),
        Text(
          title,
          style: AppTextStyles.smallTitleGrey12,
        ),
        Container(
          width: 80,
          height: 2,
          color: const Color(0xffE0E0E0),
        ),
      ],
    );
  }
}
