import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trove_store/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:trove_store/utils/constants/sizes.dart';
import 'package:trove_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (OnBoardingController.instance.currentPageIndex.value < 2) {
        return Positioned(
          top: TDeviceUtils.getAppBarHeight(),
          right: TSizes.defaultSpace,
          child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: const Text('Skip'),
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
