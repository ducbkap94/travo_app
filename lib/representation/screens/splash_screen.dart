import 'package:flutter/material.dart';
import 'package:travo_app/core/helpers/Image_helper.dart';
import 'package:travo_app/core/helpers/asset_helper.dart';
import 'package:travo_app/representation/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash_screen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async {
    await Future.delayed(const Duration(seconds: 10));
    Navigator.of(context).pushNamed(IntroScreen.routerName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFormAsset(AssetHelper.imageBackGroundSpalsh,
              fit: BoxFit.fitWidth),
        ),
        Positioned.fill(
          child: ImageHelper.loadFormAsset(AssetHelper.imageCricleSplash,
              fit: BoxFit.fitWidth),
        )
      ],
    );
  }
}
