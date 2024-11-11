import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/resources/styles_manager.dart';

class RowProfileWidget extends StatelessWidget {
  final String icon, title;
  final void Function()? onTap;
  const RowProfileWidget(
      {super.key, required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 12),
              Text(title, style: AppTextStyles.mediumTitle14),
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
