import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fashion/data/resources/color_manager.dart';
import 'package:fashion/data/resources/routes_manager.dart';
import 'package:flutter/material.dart';

import '../../data/resources/assets_manager.dart';
import '../../data/resources/constants_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.welcomeRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: context.locale == const Locale('ar')
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            children: const [
              Image(
                image: AssetImage(ImageAssets.ellipse),
              ),
            ],
          ),
          FadeIn(
            duration: const Duration(seconds: 3),
            child: const Center(
              child: ClipRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  image: AssetImage(ImageAssets.splashLogo),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: context.locale == const Locale('ar')
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: const [
              Image(
                image: AssetImage(ImageAssets.ellipse1),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
