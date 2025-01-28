import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/presentation/resources/color_manager.dart';
import 'package:fashion/presentation/resources/font_manager.dart';
import 'package:fashion/presentation/resources/routes_manager.dart';
import 'package:fashion/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/onboarding_provider.dart';

class OnBoardingView extends ConsumerWidget {
  OnBoardingView({super.key});

  final List<String> title = ["title1".tr(), "title2".tr(), "title3".tr()];
  final List<String> subtitle = [
    "subtitle1".tr(),
    "subtitle2".tr(),
    "subtitle3".tr()
  ];
  final List<String> desc = ["desc1".tr(), "desc2".tr(), "desc3".tr()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currPage = ref.watch(currPageProvider);
    final currPageNotifier = ref.read(currPageProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Routes.loginRoute);
                            // if (currPage == 2) {
                            //   Navigator.pushReplacementNamed(
                            //       context, Routes.authRoute);
                            // } else {
                            //   currPageNotifier.nextPage();
                            // }
                          },
                          child: Text(
                            "skip".tr(),
                            style: TextStyle(
                              fontFamily: FontConstants.fontFamily,
                              color: ColorManager.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 380,
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (value) {
                        currPageNotifier.setPage(value);
                      },
                      children: List.generate(
                        3,
                        (index) => Image.asset(
                          "assets/images/onboarding.PNG",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 32),
                        Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            text: title[currPage],
                            style: AppTextStyles.largeTitleBrown20,
                            children: [
                              TextSpan(
                                text: subtitle[currPage],
                                style: TextStyle(color: ColorManager.black),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          desc[currPage],
                          style: AppTextStyles.mediumTitleGrey14,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 73),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Visibility(
                              visible: currPage != 0,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  currPageNotifier.previousPage();
                                },
                                child: Container(
                                  width: 46,
                                  height: 46,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    color: ColorManager.white,
                                    border: Border.fromBorderSide(
                                      BorderSide(color: ColorManager.primary),
                                    ),
                                  ),
                                  child: Icon(Icons.arrow_back_outlined,
                                      color: ColorManager.primary),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                (index) => Padding(
                                  padding:
                                      const EdgeInsetsDirectional.only(end: 5),
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Color(
                                      index == currPage
                                          ? 0xff704F38
                                          : 0xffEDEDED,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(22),
                              onTap: () {
                                if (currPage == 2) {
                                  Navigator.pushReplacementNamed(
                                      context, Routes.loginRoute);
                                } else {
                                  currPageNotifier.nextPage();
                                }
                              },
                              child: CircleAvatar(
                                backgroundColor: ColorManager.primary,
                                radius: 25,
                                child: const Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
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
