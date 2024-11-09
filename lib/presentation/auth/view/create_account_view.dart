import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/assets_manager.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:fashion/presentation/component/buttons/buttons_custom_view.dart';
import 'package:fashion/presentation/component/text_buttons/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/create_account_providers.dart';
import '../widget/row_line_signin.dart';
import '../widget/row_question_widget.dart';
import '../widget/social_signin_list.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    bool value = false;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  Text(
                    "createAccount".tr(),
                    style: AppTextStyles.largeTitle24,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    textAlign: TextAlign.center,
                    "fillInformation".tr(),
                    style: AppTextStyles.smallTitleGrey12,
                  ),
                  const SizedBox(height: 50),
                  Consumer(
                    builder: (context, ref, child) {
                      final nameController =
                          ref.watch(caNameControllerProvider);
                      final emailController =
                          ref.watch(caEmailControllerProvider);
                      final passController =
                          ref.watch(caPassControllerProvider);
                      final obscureT = ref.watch(caObscureTProvider);
                      final isChecked = ref.watch(checkboxProvider);
                      final isCheckboxValid =
                          ref.watch(checkboxValidationProvider);

                      void validateCheckbox() {
                        if (!isChecked) {
                          ref.read(checkboxValidationProvider.notifier).state =
                              false;
                        } else {
                          ref.read(checkboxValidationProvider.notifier).state =
                              true;
                        }
                      }

                      void toggleDesign() {
                        ref.read(caObscureTProvider.notifier).state = !obscureT;
                      }

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
                              controller: nameController,
                              fillColor: ColorManager.white,
                              validatorText: 'enterName'.tr(),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "email".tr(),
                              style: AppTextStyles.smallTitle12,
                            ),
                            const SizedBox(height: 5),
                            TextFieldCustomEdit(
                              controller: emailController,
                              fillColor: ColorManager.white,
                              validatorText: 'enterEmail'.tr(),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "password".tr(),
                              style: AppTextStyles.smallTitle12,
                            ),
                            const SizedBox(height: 5),
                            TextFieldEditPass(
                              textController: passController,
                              fillColor: ColorManager.white,
                              icon: Icon(
                                obscureT
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                color: Colors.grey,
                              ),
                              obscureText: obscureT,
                              onClick: toggleDesign,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    // Update checkbox state when it changes
                                    ref.read(checkboxProvider.notifier).state =
                                        value!;
                                    validateCheckbox(); // Validate when checkbox state changes
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  activeColor: Colors.brown,
                                ),
                                Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(
                                    text: 'agree'.tr(),
                                    style: AppTextStyles.mediumTitle14,
                                    children: [
                                      TextSpan(
                                        text: 'terms'.tr(),
                                        style: TextStyle(
                                            decorationColor:
                                                ColorManager.primary,
                                            decoration:
                                                TextDecoration.underline,
                                            color: ColorManager.primary),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (!isCheckboxValid)
                              Text(
                                "acceptTerms".tr(),
                                style: const TextStyle(
                                    color: Color(0xffFF472B), fontSize: 12),
                              ),
                            const SizedBox(height: 20),
                            FilledButtomEdit(
                              text: "signUp".tr(),
                              textSize: 16,
                              textColor: ColorManager.white,
                              buttonColor: ColorManager.primary,
                              onClick: () {
                                validateCheckbox();
                                if (formKey.currentState!.validate() ||
                                    isChecked) {
                                  // Passwords are valid and match
                                  // Perform further actions like saving the password
                                  // controller.login();
                                }
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                  RowLineSignin(
                    title: "orSignup".tr(),
                  ),
                  const SizedBox(height: 40),
                  const SocialSigninList(
                    icon: ImageAssets.apple,
                    icon1: ImageAssets.google,
                    icon2: ImageAssets.facebook,
                  ),
                  const SizedBox(height: 20),
                  RowQuestionWidget(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    title: "alreadyHave".tr(),
                    desc: "signIn".tr(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
