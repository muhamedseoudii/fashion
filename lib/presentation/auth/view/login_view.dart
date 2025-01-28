import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/assets_manager.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:fashion/presentation/resources/routes_manager.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:fashion/presentation/component/buttons/buttons_custom_view.dart';
import 'package:fashion/presentation/component/text_buttons/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/login_providers.dart';
import '../widget/row_line_signin.dart';
import '../widget/row_question_widget.dart';
import '../widget/social_signin_list.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
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
                    "signIn".tr(),
                    style: AppTextStyles.largeTitle24,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "welcome".tr(),
                    style: AppTextStyles.smallTitleGrey12,
                  ),
                  const SizedBox(height: 50),
                  Consumer(
                    builder: (context, ref, child) {
                      final emailController =
                          ref.watch(emailControllerProvider);
                      final passController = ref.watch(passControllerProvider);
                      final obscureT = ref.watch(obscureTProvider);

                      void toggleDesign() {
                        ref.read(obscureTProvider.notifier).state = !obscureT;
                      }

                      return Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "email".tr(),
                              style: AppTextStyles.smallTitle12,
                            ),
                            const SizedBox(height: 5),
                            TextFieldCustomEdit(
                              radius: 78,
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, Routes.otpRoute);
                                    },
                                    child: Text(
                                      "forgotPassword".tr(),
                                      style: AppTextStyles.smallTitleBrown12,
                                    )),
                              ],
                            ),
                            const SizedBox(height: 20),
                            FilledButtonEdit(
                              text: "signIn".tr(),
                              textSize: 16,
                              textColor: ColorManager.white,
                              buttonColor: ColorManager.primary,
                              onClick: () {
                                if (formKey.currentState!.validate()) {
                                  // Passwords are valid and match
                                  // Perform further actions like saving the password
                                  // controller.login();
                                  Navigator.pushNamed(
                                      context, Routes.locationRoute);
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
                    title: "orSignin".tr(),
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
                      Navigator.pushNamed(context, Routes.signUpRoute);
                    },
                    title: "don'tHaveAccount".tr(),
                    desc: "signUp".tr(),
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
