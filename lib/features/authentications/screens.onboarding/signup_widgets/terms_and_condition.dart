import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/size.dart';
import 'package:j_store/utils/constants/text_string.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';


class JTermsAndConditions extends StatelessWidget {
  const JTermsAndConditions({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFuntions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){}),),
        const SizedBox(width: JSizes.spaceBtwItems,),
        Text.rich(TextSpan(
          children: [TextSpan(text: '${JTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${JTexts.privacyPolicy}', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? JColors.white : JColors.primary,
              decoration:TextDecoration.underline ,
              decorationColor: dark ? JColors.white : JColors.primary,
            ) ),
            TextSpan(text: JTexts.and, style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: JTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? JColors.white : JColors.primary,
              decoration:TextDecoration.underline ,
              decorationColor: dark ? JColors.white : JColors.primary,
            ) ),

          ],
        ),)
      ],
    );
  }
}