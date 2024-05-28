import 'package:flutter/material.dart';
import 'package:j_store/utils/constants/size.dart';

class JSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: JSizes.appBarHeight,
    left: JSizes.defaultSpace,
    bottom: JSizes.defaultSpace,
    right: JSizes.defaultSpace,

  );
}