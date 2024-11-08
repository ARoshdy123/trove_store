import 'package:flutter/material.dart';
import 'package:trove_store/features/authentication/screens/signup/signup_widget/signup_form.dart';
import 'package:trove_store/utils/constants/sizes.dart';
import 'package:trove_store/utils/constants/text_strings.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.defaultSpace,
              ),
               const SignUpForm()
            ],
          ),
        ),
      ),
    );
  }
}