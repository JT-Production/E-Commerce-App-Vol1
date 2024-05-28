import 'package:flutter/material.dart';
import 'package:j_store/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:j_store/features/authentications/screens.onboarding/onboarding.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/devices/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: JDeviceUtils.getAppBarHeight(),
        right: JSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage() , child: const Text('Skip'),
        ),
    );
  }
}
