import 'package:flutter/material.dart';

import '../../core/constants/dismension_constants.dart';
import '../../core/constants/textstyle_ext.dart';
import '../../core/helpers/Image_helper.dart';

class IntroItemWidget extends StatelessWidget {
  const IntroItemWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.sourceImage,
    required this.alignment,
  }) : super(key: key);
  final String title;
  final String description;
  final String sourceImage;
  final AlignmentGeometry alignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: alignment,
          child: ImageHelper.loadFormAsset(
            sourceImage,
            height: 400,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(
          height: kMediumPadding * 2,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.defaultStyle.bold,
                ),
                const SizedBox(
                  height: kMediumPadding,
                ),
                Text(
                  description,
                  style: TextStyles.defaultStyle,
                )
              ],
            )),
      ],
    );
  }
}
