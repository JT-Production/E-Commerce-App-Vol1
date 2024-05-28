import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/features/authentications/screens.onboarding/signup_widgets/verify_email.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/constants/text_string.dart';
import 'terms_and_condition.dart';


class JSignupForm extends StatelessWidget {
  const JSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: JTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),

            const SizedBox(width: JSizes.spaceBtwInputFields),

            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: JTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),

          ],
        ),

        const SizedBox(height: JSizes.spaceBtwInputFields,),

        ///Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: JTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),

        const SizedBox(height: JSizes.spaceBtwInputFields,),
        ///Email

        TextFormField(

          decoration: const InputDecoration(
            labelText: JTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),

        const SizedBox(height: JSizes.spaceBtwInputFields,),
        ///Phone Number

        TextFormField(

          decoration: const InputDecoration(
            labelText: JTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),

        const SizedBox(height: JSizes.spaceBtwInputFields,),
        ///Password
        TextFormField(

          decoration: const InputDecoration(
            labelText: JTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),

        const SizedBox(height: JSizes.spaceBtwInputFields,),
        /// Terms&Condition Checkbox
        JTermsAndConditions(),

        const SizedBox(height: JSizes.spaceBtwSections),
        /// Sign up Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(JTexts.createAccount),),),
      ],
    ),
    );
  }
}
