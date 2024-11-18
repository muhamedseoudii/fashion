import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/resources/assets_manager.dart';
import '../../../data/resources/color_manager.dart';
import '../../component/buttons/buttons_custom_view.dart';
import '../../component/text_buttons/text_field_custom.dart';
import '../provider/edit_profile_providers.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile".tr(),
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
                  "Don’t worry, only you can see your personal \ndata. No one else will be able to see it."
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "name".tr(),
                            style: AppTextStyles.smallTitle12,
                          ),
                          const SizedBox(height: 5),
                          TextFieldCustomEdit(
                            controller: editNameController,
                            fillColor: ColorManager.white,
                            validatorText: 'enterName'.tr(),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Phone Number".tr(),
                            style: AppTextStyles.smallTitle12,
                          ),
                          const SizedBox(height: 5),
                          TextFieldCustomEdit(
                            controller: editMobileController,
                            fillColor: ColorManager.white,
                            validatorText: 'enterPhone Number'.tr(),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Gender".tr(),
                            style: AppTextStyles.smallTitle12,
                          ),
                          const SizedBox(height: 5),
                          DropdownButtonFormField<String>(
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                            value: selectedGender,
                            menuMaxHeight: 150,
                            style: AppTextStyles.mediumTitleBlack14,
                            dropdownColor: ColorManager.white,
                            items: genders.map((String gender) {
                              return DropdownMenuItem<String>(
                                value: gender,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 50,),
                                  child: Text(gender),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              ref.read(selectedGenderProvider.notifier).state =
                                  value;
                            },
                            decoration: InputDecoration(
                              hintText: "Select Gender",
                              hintStyle: const TextStyle(
                                color: Color(0xff9CA3AF),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              filled: true,

                              fillColor: ColorManager.white,
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(200)),
                                borderSide: BorderSide(
                                    color: Color(0xFF704F38), width: 2),
                              ),
                              // errorBorder: const OutlineInputBorder(
                              //   borderRadius: BorderRadius.all(Radius.circular(200)),
                              //   borderSide: BorderSide(color: Color(0xffFF472B)),
                              // ),
                              // focusedErrorBorder: const OutlineInputBorder(
                              //   borderRadius: BorderRadius.all(Radius.circular(200)),
                              //   borderSide: BorderSide(color: Color(0xffFF472B), width: 2),
                              // ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(200),
                                borderSide:
                                    const BorderSide(color: Color(0xffD9D9D9)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(200),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please select gender'.tr();
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 50),
                          FilledButtomEdit(
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
