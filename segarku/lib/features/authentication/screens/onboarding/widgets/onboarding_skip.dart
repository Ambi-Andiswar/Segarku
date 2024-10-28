import 'package:flutter/material.dart';

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
      child: TextButton(onPressed: (){}, child: const Text('Skip')),
    );
  }
}