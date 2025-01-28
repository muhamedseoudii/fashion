import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../presentation/resources/assets_manager.dart';
import '../../../presentation/resources/color_manager.dart';
import '../../component/buttons/buttons_custom_view.dart';
import '../../component/text_buttons/text_field_custom.dart';
import '../provider/edit_profile_providers.dart';
import '../widget/edit_profile/custom_dropdown_widget.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "editProfile".tr(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "text8"
                      .tr(),
                  style: AppTextStyles.smallTitleGrey12,
                ),
                const SizedBox(height: 36),
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: ColorManager.grey1),
                        child: SvgPicture.asset(IconAssets.personIcon,
                            fit: BoxFit.scaleDown),
                      ),
                      SvgPicture.asset(IconAssets.editIcon),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Consumer(
                  builder: (context, ref, child) {
                    final editNameController =
                        ref.watch(editNameControllerProvider);
                    final editMobileController =
                        ref.watch(editMobileControllerProvider);
                    final genders = ref.watch(gendersProvider);
                    final selectedGender = ref.watch(selectedGenderProvider);
                    return Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "name".tr(),
                            style: AppTextStyles.smallTitle12,
                          ),
                          const SizedBox(height: 5),
                          TextFieldCustomEdit(
                            radius: 78,
                            controller: editNameController,
                            fillColor: ColorManager.white,
                            validatorText: 'enterName'.tr(),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "phoneNumber".tr(),
                            style: AppTextStyles.smallTitle12,
                          ),
                          const SizedBox(height: 5),
                          TextFieldCustomEdit(
                            radius: 78,
                            controller: editMobileController,
                            fillColor: ColorManager.white,
                            validatorText: 'enterPhoneNumber'.tr(),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Gender".tr(),
                            style: AppTextStyles.smallTitle12,
                          ),
                          const SizedBox(height: 5),
                          CustomDropdownWidget(
                            hintText: 'selectGender'.tr(),
                            items: genders,
                            validator: (value) {
                              if (selectedGender == null ||
                                  selectedGender.toString().isEmpty) {
                                return 'pleaseSelectGender'.tr();
                              }
                              return null;
                            },
                            onChange: (value) {
                              if (value != null) {
                                ref.read(selectedGenderProvider.notifier).state =
                                    value.toString();
                              }
                            },
                          ),
                          const SizedBox(height: 50),
                          FilledButtonEdit(
                            text: "save".tr(),
                            textSize: 16,
                            textColor: ColorManager.white,
                            buttonColor: ColorManager.primary,
                            onClick: () {
                              if (formKey.currentState!.validate()) {
                                // Passwords are valid and match
                                // Perform further actions like saving the password
                                // controller.login();
                                Navigator.pop(context);
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
