import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trove_store/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:trove_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:trove_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:trove_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:trove_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:trove_store/utils/constants/image_strings.dart';
import 'package:trove_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            //to know which current page is visible

            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
