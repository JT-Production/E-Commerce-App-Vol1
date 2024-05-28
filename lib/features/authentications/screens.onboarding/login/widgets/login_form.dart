import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:j_store/features/authentications/screens.onboarding/signup_widgets/signup.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/constants/text_string.dart';

class JLoginForm extends StatelessWidget {
  const JLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: JSizes.spaceBtwSections),
      child: Column(
        children: [
          ///Email
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: JTexts.email),
          ),
          const SizedBox(height: JSizes.spaceBtwInputFields,),

          /// Password
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), labelText: JTexts.password, suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: JSizes.spaceBtwInputFields / 2),

          /// Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(JTexts.rememberMe),
                ],
              ),

              /// Forget Password
              TextButton(onPressed: (){}, child: const Text(JTexts.forgotPassword),)
            ],
          ),
          const SizedBox(height: JSizes.spaceBtwSections,),

          ///Sign in Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(JTexts.signIn))),
          const SizedBox(height: JSizes.spaceBtwItems),
          /// Create Account Button
          SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(JTexts.createAccount))),

        ],
      ),
    ),
    );
  }
}