import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:j_store/features/authentications/screens.onboarding/login/login.dart';
import 'package:j_store/utils/constants/size.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: const SingleChildScrollView(
        // Padding to give default equal space on all in all screens
        child: Padding(padding: EdgeInsets.all(JSizes.defaultSpace),
        child: Column(
          children: [
            ///Image

            Image(image: AssetImage(assetName))
            ///Title & SubTitle

            /// Buttons
          ],
        ),
        ),
      ) ,
    );
  }
}
