import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/text_string.dart';
import 'package:j_store/utils/helpers/helper_functions.dart';

class JFormDivider extends StatelessWidget {

  const JFormDivider({ super.key, required this.dividerText});

  final String dividerText;


  @override
  Widget build(BuildContext context) {
    final dark = JHelperFuntions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible( child : Divider(color : dark ? JColors.darkGrey : JColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),
        Flexible( child : Divider(color : dark ? JColors.darkGrey : JColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),

      ],
    );
  }
}