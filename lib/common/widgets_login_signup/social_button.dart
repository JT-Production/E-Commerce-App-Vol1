import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/colors.dart';
import 'package:j_store/utils/constants/image_strings.dart';
import 'package:j_store/utils/constants/size.dart';


class JSocialButtons extends StatelessWidget {
  const JSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: JColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton (
            onPressed: () {},
            icon: const Image(
              width: JSizes.iconMd,
              height: JSizes.iconMd,
              image: AssetImage(JImages.google),
            ),
          ),
        ),
        const SizedBox(width: JSizes.spaceBtwItems),

        Container(
          decoration: BoxDecoration(border: Border.all(color: JColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton (
            onPressed: () {},
            icon: const Image(
              width: JSizes.iconMd,
              height: JSizes.iconMd,
              image: AssetImage(JImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}