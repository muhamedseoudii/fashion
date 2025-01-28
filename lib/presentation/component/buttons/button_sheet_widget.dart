import 'package:flutter/material.dart';

import '../../../presentation/resources/color_manager.dart';
import '../../../presentation/resources/styles_manager.dart';
import 'buttons_custom_view.dart';

class ButtonSheetWidget extends StatelessWidget {
  final String title,desc,textCancel,textOk;
  final void Function()? onClickOK;
  const ButtonSheetWidget({super.key, required this.title, required this.desc, required this.textCancel, required this.textOk, this.onClickOK});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 20, horizontal: 24),
      height: 250,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
              style: AppTextStyles.largeTitle16),
          const SizedBox(height: 12),
          const Divider(),
          const SizedBox(height: 12),
          Text(desc,
              style: AppTextStyles.mediumGreyTitle14),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 158,
                height: 48,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(78),
                    ),
                    side: BorderSide(
                      color: ColorManager.primary,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context);
                  },
                  child:  Text(
                    textCancel,
                    style: AppTextStyles.mediumTitleBrown14,
                  ),
                ),
              ),
              SizedBox(
                width: 158,
                height: 48,
                child: FilledButtonEdit(
                  text: textOk,
                  textSize: 14,
                  textColor: ColorManager.white,
                  buttonColor: ColorManager.primary,
                  onClick: onClickOK,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
