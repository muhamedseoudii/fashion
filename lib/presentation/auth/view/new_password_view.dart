import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:fashion/presentation/resources/routes_manager.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:fashion/presentation/auth/provider/new_pass_providers.dart';
import 'package:fashion/presentation/component/buttons/buttons_custom_view.dart';
import 'package:fashion/presentation/component/text_buttons/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorManager.white,
                    border: Border.fromBorderSide(
                        BorderSide(color: ColorManager.grey1))),
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "newPassword".tr(),
                      style: AppTextStyles.largeTitle20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    textAlign: TextAlign.center,
                    "desc4".tr(),
                    style: AppTextStyles.largeTitleLightGrey12,
                  ),
                  const SizedBox(height: 36),
                  Consumer(
                    builder: (context, ref, child) {
                      final passController =
                          ref.watch(newPassControllerProvider);
                      final confirmPassController =
                          ref.watch(newConfirmPassControllerProvider);
                      final obscureT = ref.watch(newObscureTProvider);
                      final obscureT1 = ref.watch(newObscureTProvider1);

                      void toggleDesign() {
                        ref.read(newObscureTProvider.notifier).state =
                            !obscureT;
                      }

                      void toggleDesign1() {
                        ref.read(newObscureTProvider1.notifier).state =
                            !obscureT1;
                      }

                      return Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            const SizedBox(height: 20),
                            Text(
                              "confirmPass".tr(),
                              style: AppTextStyles.smallTitle12,
                            ),
                            const SizedBox(height: 5),
                            TextFieldEditPassConfirm(
                              validateController: passController,
                              textController: confirmPassController,
                              fillColor: ColorManager.white,
                              icon: Icon(
                                obscureT1
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                color: Colors.grey,
                              ),
                              obscureText: obscureT1,
                              onClick: toggleDesign1,
                            ),
                            const SizedBox(height: 32),
                            FilledButtonEdit(
                              text: "createPass".tr(),
                              textSize: 16,
                              textColor: ColorManager.white,
                              buttonColor: ColorManager.primary,
                              onClick: () {
                                if (formKey.currentState!.validate()) {
                                  // Passwords are valid and match
                                  // Perform further actions like saving the password
                                  // controller.login();
                                  Navigator.pushNamed(
                                      context, Routes.loginRoute);
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
            ),
          ),
        ],
      )),
    );
  }
}
