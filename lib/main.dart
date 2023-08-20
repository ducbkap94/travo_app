import 'package:flutter/material.dart';
import 'package:travo_app/core/constants/color_constants.dart';
import 'package:travo_app/representation/screens/splash_screen.dart';
import 'package:travo_app/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travo app',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        backgroundColor: ColorPalette.backgroundScaffoldColor,
      ),
      home: const SplashScreen(),
      routes: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
