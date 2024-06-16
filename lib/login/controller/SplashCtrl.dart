import 'package:basicproject/login/view/SingUp.dart';
import 'package:get/get.dart';

class SplashCtrl extends GetxController {
  @override
  void onInit() {
    super.onInit();

    splashscreen();
  }

  Voiddemoprint() {
    print(1234);
  }

  splashscreen() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(SignUp());
    });
  }
}
