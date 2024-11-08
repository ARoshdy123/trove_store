
import 'package:flutter/material.dart';
import 'package:trove_store/utils/constants/image_strings.dart';
import 'package:trove_store/utils/constants/sizes.dart';
import 'package:trove_store/utils/constants/text_strings.dart';
import 'package:trove_store/utils/helpers/helper_functions.dart';

class KLoginHeader extends StatelessWidget {
  const KLoginHeader({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
