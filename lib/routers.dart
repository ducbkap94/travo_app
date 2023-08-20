import 'package:flutter/cupertino.dart';
import 'package:travo_app/representation/screens/intro_screen.dart';
import 'package:travo_app/representation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> router = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routerName: (context) => const IntroScreen(),
};
