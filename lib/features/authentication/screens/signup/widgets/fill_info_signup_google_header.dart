import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class TFillInfoSignUpGoogleHeader extends StatelessWidget {
  const TFillInfoSignUpGoogleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Image(
        //   height: 100,
        //   image: AssetImage(TImages.loginImage),
        // ),
        const SizedBox(height: TSizes.lg),
        Text(
          TTexts.fillInfoSignUpGoogleTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.fillInfoSignUpGoogleSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
