import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trove_store/common/styles/spacing_styles.dart';
import 'package:trove_store/common/widgets_login_signup/form_divider.dart';
import 'package:trove_store/common/widgets_login_signup/social_buttons.dart';
import 'package:trove_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:trove_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:trove_store/utils/constants/sizes.dart';
import 'package:trove_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title &subtitle
              const KLoginHeader(),

               const KloginForm(),

              ///divider
              KFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections/2),
              ///Footer
              const KSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
