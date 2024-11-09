import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trove_store/features/authentication/screens/signup/signup_widget/terms_condition_checkbox.dart';
import 'package:trove_store/features/authentication/screens/signup/verify_email.dart';

import '../../../../../common/widgets_login_signup/form_divider.dart';
import '../../../../../common/widgets_login_signup/social_buttons.dart';
import '../../../../../common/widgets_login_signup/text_form_field.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: TFormField(
                    labelText: TTexts.firstName,
                    fontSize: TSizes.fontSizeSm,
                    prefixIcon: Icon(Iconsax.user)),
              ),
              SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TFormField(
                    labelText: TTexts.lastName,
                    fontSize: TSizes.fontSizeSm,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// username
          const TFormField(
            fontSize: TSizes.fontSizeSm,
            prefixIcon: Icon(Iconsax.user_edit),
            labelText: TTexts.username,
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// E-mail
          const TFormField(
              fontSize: TSizes.fontSizeSm,
              prefixIcon: Icon(Iconsax.direct),
              labelText: TTexts.email),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// PhoneNumber
          TFormField(
            fontSize: TSizes.fontSizeSm,
            prefixIcon: const Icon(Iconsax.call),
            labelText: TTexts.phoneNo,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// Password
          const TFormField(
              fontSize: TSizes.fontSizeSm,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: TTexts.password),
          const SizedBox(
            height: TSizes.spaceBtwSections/2,
          ),
          const TTermsAndConditionCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections / 2),

          /// signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections / 2),
          KFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
          const SizedBox(height: TSizes.spaceBtwSections/2),

          ///Footer
          const KSocialButtons(),
        ],
      ),
    );
  }
}
