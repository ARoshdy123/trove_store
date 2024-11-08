import 'package:flutter/material.dart';
import 'package:trove_store/utils/constants/sizes.dart';

class KSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}
