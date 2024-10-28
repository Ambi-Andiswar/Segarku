import 'package:flutter/material.dart';
import 'package:segarku/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:segarku/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:segarku/utils/constants/colors.dart';
import 'package:segarku/utils/constants/image_strings.dart';
import 'package:segarku/utils/constants/size.dart';
import 'package:segarku/utils/constants/text_strings.dart';
import 'package:segarku/utils/device/device.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            children: const[
              OnBoardingPage(
                image: SImages.onBoardingImage1,
                title: STexts.onBoardingTitele1,
                subTitle: STexts.onBoardingSubTitele1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage2,
                title: STexts.onBoardingTitele2,
                subTitle: STexts.onBoardingSubTitele2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitele3,
                subTitle: STexts.onBoardingSubTitele3,
              ),
            ],
          ),

          // Skip Button
          const OnboardingSkip(),
          
          // Dot Navigator SmoothPageIndicator
          Positioned(
            bottom: SDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: SSizes.defaultSpace,
            child: SmoothPageIndicator(
              controller: PageController(),
              count: 3,
              effect: const ExpandingDotsEffect(activeDotColor: SColors.dark, dotHeight: 6),
            ),
          )

          // Circular Button
        ],
      ),
    );
  }
}
