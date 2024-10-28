import 'package:flutter/material.dart';
import 'package:segarku/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/device/device.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtils.getAppBarHeight(),
      right: SSizes.defaultSpace, 
      child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: const Text('Skip')),
    );
  }
}