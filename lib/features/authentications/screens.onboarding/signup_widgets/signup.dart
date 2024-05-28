import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/common/widgets_login_signup/form_divider.dart';
import 'package:j_store/common/widgets_login_signup/social_button.dart';
import 'package:j_store/features/authentications/screens.onboarding/signup_widgets/signup_form.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/constants/text_string.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(JSizes.spaceBtwItems),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ///Title
                Text(JTexts.signupTitle, style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium,),
                const SizedBox(height: JSizes.spaceBtwSections,),

                /// Form
              const JSignupForm(),

                const SizedBox(height: JSizes.spaceBtwSections / 2),
                /// Divider
                JFormDivider(dividerText: JTexts.orSignUpWith.capitalize!),

                const SizedBox(height: JSizes.spaceBtwSections / 2),
                /// Social Button
                const JSocialButtons(),

              ],
            ),
          ),
      ),
    );
  }
}


