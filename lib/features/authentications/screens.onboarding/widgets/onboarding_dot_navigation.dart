import 'package:flutter/material.dart';
import 'package:j_store/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/devices/device_utility.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = JHelperFuntions.isDarkMode(context);

    return Positioned(
      bottom: JDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: JSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick ,
        effect:  ExpandingDotsEffect(activeDotColor: dark ?  JColors.light : JColors.dark, dotHeight: 6 ),),

    );
  }
}
