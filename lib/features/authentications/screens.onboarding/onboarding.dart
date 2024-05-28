import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:j_store/features/authentications/controllers.onboarding/onboarding_controller.dart';
import 'package:j_store/features/authentications/screens.onboarding/widgets/onboarding_next_button.dart';
import 'package:j_store/features/authentications/screens.onboarding/widgets/onboarding_page.dart';
import 'package:j_store/features/authentications/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/text_string.dart';
import 'package:j_store/features/authentications/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:j_store/features/authentications/screens.onboarding/widgets/onboarding_next_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return  Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: JImages.onBoardingImages1,
                  title: JTexts.onBoardingSubTitle1,
                  subTitle: JTexts.onBoardingSubTitle1
              ),
              OnBoardingPage(
                  image: JImages.onBoardingImages2,
                  title: JTexts.onBoardingSubTitle2,
                  subTitle: JTexts.onBoardingSubTitle2
              ),
              OnBoardingPage(
                  image: JImages.onBoardingImages3,
                  title: JTexts.onBoardingSubTitle3,
                  subTitle: JTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
         const OnBoardingNextButton(),
        ],
      ),
    );
  }
}




