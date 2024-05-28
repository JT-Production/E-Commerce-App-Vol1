import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/devices/device_utility.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFuntions.isDarkMode(context);
    return Positioned(
      right: JSizes.defaultSpace,
      bottom: JDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? JColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
