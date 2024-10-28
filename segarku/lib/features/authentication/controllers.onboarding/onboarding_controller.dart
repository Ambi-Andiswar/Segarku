import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  /// Variables
  
  ///  Update Current Index when Page Scrol
  void updatePageIndicator(index) {}

  /// Jump to the specific dot seelllcted page.
  void dotNavigationClick(index) {}

  /// Update Current Index & jump to next page
  void nextPage() {}

  /// Update Current Index & jump to the laslt Page
  void skipPage() {}
}