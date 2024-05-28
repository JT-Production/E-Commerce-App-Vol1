import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/constants/text_string.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';


class JLoginHeader extends StatelessWidget {
  const JLoginHeader({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFuntions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? JImages.lightAppLogo : JImages.darkAppLogo),
        ),
        Text(JTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: JSizes.sm,),
        Text(JTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),

      ],
    );
  }
}