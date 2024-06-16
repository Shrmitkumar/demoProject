import 'package:basicproject/login/view/FirstPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomePageCtrl extends GetxController {
  var selectedIndex = 0.obs;
  var selectedTitle = 0.obs;

  /// check user registered

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();

    selectedIndex.value = 0;

    Get.offAll(FirstPage());
  }
}
