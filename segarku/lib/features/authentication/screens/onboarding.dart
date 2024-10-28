import 'package:flutter/material.dart';
import 'package:segarku/utils/constants/image_strings.dart';
import 'package:segarku/utils/constants/size.dart';
import 'package:segarku/utils/constants/text_strings.dart';
import 'package:segarku/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: SHelperFunctions.screenWidth() * 0.8,
                    height: SHelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(SImages.onBoardingImage1),
                  ),
                  Text(
                    STexts.onBoardingTitele1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),
                  Text(
                    STexts.onBoardingSubTitele1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),    
                ],
              ),
            ],
          ),
          // Skip Button
          // Dot Navigator SmoothPageIndicator
          // Circular Button
        ],
      ),
    );
  }
}