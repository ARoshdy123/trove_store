
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trove_store/features/authentication/screens/forgetpassword/forget_password.dart';
import 'package:trove_store/features/authentication/screens/signup/signup.dart';
import 'package:trove_store/navigation_menu.dart';
import 'package:trove_store/utils/constants/sizes.dart';
import 'package:trove_store/utils/constants/text_strings.dart';

class KloginForm extends StatelessWidget {
    const KloginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:  const EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration:  const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
             const SizedBox(height: TSizes.spaceBtwInputFields),

            ///Password
            TextFormField(
              decoration:  const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
             const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            ///remember me& forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                ///forget password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child:  const Text(TTexts.forgetPassword))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections/2),

            ///Sign in button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    child: const Text(TTexts.signIn))),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///Create account button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: const Text(TTexts.createAccount))),

          ],
        ),
      ),
    );
  }
}
