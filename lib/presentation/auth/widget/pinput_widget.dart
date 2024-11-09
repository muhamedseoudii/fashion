import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/routes_manager.dart';
import 'package:fashion/data/resources/styles_manager.dart';
import 'package:fashion/presentation/auth/provider/otp_timer_notifier.dart';
import 'package:fashion/presentation/component/buttons/buttons_custom_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinput/pinput.dart';

class PinputCustom extends StatefulWidget {
  const PinputCustom({super.key});

  @override
  State<PinputCustom> createState() => _PinputCustomState();
}

class _PinputCustomState extends State<PinputCustom> {
  // late final SmsRetriever smsRetriever;
  late final TextEditingController pinController;
  late final FocusNode focusNode;
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
    focusNode = FocusNode();

    /// In case you need an SMS autofill feature
    // smsRetriever = SmsRetrieverImpl(
    //   SmartAuth(),
    // );
  }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final focusedBorderColor = ColorManager.primary;
    final fillColor = ColorManager.white;
    final borderColor = ColorManager.secandary;

    final defaultPinTheme = PinTheme(
      width: 57,
      height: 41,
      textStyle: TextStyle(
        fontSize: 16,
        color: ColorManager.primary,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pinput(
            // You can pass your own SmsRetriever implementation based on any package
            // in this example we are using the SmartAuth
            // smsRetriever: smsRetriever,
            controller: pinController,
            focusNode: focusNode,
            errorTextStyle: AppTextStyles.mediumTitleRed12,
            defaultPinTheme: defaultPinTheme,
            separatorBuilder: (index) => const SizedBox(width: 12),
            validator: (value) {
              return value == '2222' ? null : 'pinIncorrect'.tr();
            },
            hapticFeedbackType: HapticFeedbackType.lightImpact,
            onCompleted: (pin) {
              debugPrint('onCompleted: $pin');
            },
            onChanged: (value) {
              debugPrint('onChanged: $value');
            },
            cursor: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 9),
                  width: 22,
                  height: 1,
                  color: focusedBorderColor,
                ),
              ],
            ),
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: focusedBorderColor),
              ),
            ),
            submittedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration!.copyWith(
                color: fillColor,
                borderRadius: BorderRadius.circular(19),
                border: Border.all(color: focusedBorderColor),
              ),
            ),
            errorPinTheme: defaultPinTheme.copyBorderWith(
              border: Border.all(color: Colors.redAccent),
            ),
          ),
          const SizedBox(height: 20),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Consumer(
          //       builder: (context, ref, child) {
          //         final secondsRemaining = ref.watch(otpTimerProvider);
          //         return Container(
          //           height: 40,
          //           width: 86,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(6),
          //             border: Border.fromBorderSide(
          //               BorderSide(color: ColorManager.darkPrimary),
          //             ),
          //           ),
          //           child: Center(
          //             child: Text(
          //               '0:$secondsRemaining',
          //               style: AppTextStyles.largeTitleDarkBlue21,
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //     InkWell(
          //       onTap: () {
          //         Navigator.pushReplacementNamed(context, Routes.loginRoute);
          //       },
          //       child: Container(
          //         height: 40,
          //         width: 156,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(6),
          //           color: ColorManager.lightRed,
          //         ),
          //         child: const Center(
          //           child: Text(
          //             "الرقم غير صحيح؟",
          //             style: AppTextStyles.smallTitleWhite11,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "didNotReceive".tr(),
                style: AppTextStyles.smallTitleGrey12,
              ),
              Consumer(
                builder: (context, ref, child) {
                  final secondsRemaining = ref.watch(otpTimerProvider);
                  return Center(
                    child: TextButton(
                      onPressed: secondsRemaining == 0
                          ? () {
                              ref.watch(otpTimerProvider.notifier).startTimer();
                            }
                          : null,
                      child: Text(
                        'resendCode'.tr(),
                        style: AppTextStyles.smallTitleBrown12,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 32),
          FilledButtomEdit(
            text: "verify".tr(),
            textSize: 16,
            textColor: ColorManager.white,
            buttonColor: ColorManager.primary,
            onClick: () {
              focusNode.unfocus();
              if (formKey.currentState!.validate()) {
                // Passwords are valid and match
                // Perform further actions like saving the password
                // controller.login();
                Navigator.pushNamed(context, Routes.newPassRoute);
              }
            },
          ),
        ],
      ),
    );
  }
}

/// You, as a developer should implement this interface.
/// You can use any package to retrieve the SMS code. in this example we are using SmartAuth
// class SmsRetrieverImpl implements SmsRetriever {
//   const SmsRetrieverImpl(this.smartAuth);
//
//   final SmartAuth smartAuth;
//
//   @override
//   Future<void> dispose() {
//     return smartAuth.removeSmsListener();
//   }
//
//   @override
//   Future<String?> getSmsCode() async {
//     final signature = await smartAuth.getAppSignature();
//     debugPrint('App Signature: $signature');
//     final res = await smartAuth.getSmsCode(
//       useUserConsentApi: true,
//     );
//     if (res.succeed && res.codeFound) {
//       return res.code!;
//     }
//     return null;
//   }
//
//   @override
//   bool get listenForMultipleSms => false;
// }
