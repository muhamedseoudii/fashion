import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/component/text_buttons/text_field_custom.dart';
import 'package:fashion/presentation/profile_ui/provider/password_manager_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/resources/color_manager.dart';
import '../../../data/resources/styles_manager.dart';
import '../../component/buttons/buttons_custom_view.dart';

class PasswordManagerView extends StatelessWidget {
  const PasswordManagerView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Password Manager",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Current Password",
                    style: AppTextStyles.smallTitle12),
                const SizedBox(height: 6),
                Consumer(
                  builder: (context, ref, child) {
                    final currPassController =
                    ref.watch(pmCurrPassControllerProvider);
                    final passController =
                    ref.watch(pmPassControllerProvider);
                    final confirmPassController =
                    ref.watch(pmConfirmPassControllerProvider);
                    final obscureTCurr = ref.watch(pmObscureTCurrPassProvider);
                    final obscureTPass = ref.watch(pmObscureTPassProvider);
                    final obscureTConfirmPass = ref.watch(pmObscureTConfirmPassProvider);
                    void toggleDesignCurr() {
                      ref.read(pmObscureTCurrPassProvider.notifier).state = !obscureTCurr;
                    }
                    void toggleDesignPass() {
                      ref.read(pmObscureTPassProvider.notifier).state = !obscureTPass;
                    }
                    void toggleDesignConfirmPass() {
                      ref.read(pmObscureTConfirmPassProvider.notifier).state = !obscureTConfirmPass;
                    }
                    return Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFieldEditPass(
                            textController: currPassController,
                            fillColor: ColorManager.white,
                            icon: Icon(
                              obscureTCurr
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: Colors.grey,
                            ),
                            obscureText: obscureTCurr,
                            onClick: toggleDesignCurr,
                          ),
                          const SizedBox(height: 19),
                          const Text("New Password",
                              style: AppTextStyles.smallTitle12),
                          const SizedBox(height: 6),
                          TextFieldEditPass(
                            textController: passController,
                            fillColor: ColorManager.white,
                            icon: Icon(
                              obscureTPass
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: Colors.grey,
                            ),
                            obscureText: obscureTPass,
                            onClick: toggleDesignPass,
                          ),
                            const SizedBox(height: 19),
                          const Text("Confirm New Password",
                              style: AppTextStyles.smallTitle12),
                          const SizedBox(height: 6),
                          TextFieldEditPassConfirm(

                            validateController: passController,
                            textController: confirmPassController,
                            fillColor: ColorManager.white,
                            icon: Icon(
                              obscureTConfirmPass
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: Colors.grey,
                            ),
                            obscureText: obscureTConfirmPass,
                            onClick: toggleDesignConfirmPass,
                          ),
                          const SizedBox(height: 100),
                          FilledButtomEdit(
                            text: "Change Password".tr(),
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
