import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/styles/spacing_styles.dart';
import 'package:j_store/common/widgets_login_signup/form_divider.dart';
import 'package:j_store/common/widgets_login_signup/social_button.dart';
import 'package:j_store/features/authentications/screens.onboarding/login/widgets/login_form.dart';
import 'package:j_store/features/authentications/screens.onboarding/login/widgets/login_header.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/constants/text_string.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFuntions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: JSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///LOgo , title & sub title
             const JLoginHeader(),

              /// Form
             const JLoginForm(),

              /// Divider
             JFormDivider(dividerText: JTexts.orSignInWith.capitalize!),
              const SizedBox(height: JSizes.spaceBtwSections / 2 ),


              ///Footer
             const JSocialButtons()
            ],
          ),
        ),
      )
    );
  }
}






