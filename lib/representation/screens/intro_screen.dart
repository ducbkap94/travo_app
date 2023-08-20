import 'package:flutter/material.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/Image_helper.dart';
import 'package:travo_app/representation/widget/item_intro_widget.dart';

import '../../core/helpers/asset_helper.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);
  static String routerName = '/intro_screen';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  final List<Widget> pagelist = const [
    IntroItemWidget(
      title: 'Book a flight',
      description:
          'Found a flight that matches your destination and schedule? Book it instantly.',
      sourceImage: AssetHelper.slide1,
      alignment: Alignment.centerRight,
    ),
    IntroItemWidget(
      title: 'Find a hotel room',
      description:
          'Select the day, book your room. We give you the best price.',
      sourceImage: AssetHelper.slide2,
      alignment: Alignment.center,
    ),
    IntroItemWidget(
      title: 'Enjoy your trip',
      description:
          'Easy discovering new places and share these between your friends and travel together.',
      sourceImage: AssetHelper.slide3,
      alignment: Alignment.centerLeft,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: pagelist,
          ),
          Positioned(
              child: Row(
            children: [],
          ))
        ],
      ),
    );
  }
}
