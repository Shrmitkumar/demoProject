import 'package:basicproject/Home/view/HomePage.dart';
import 'package:basicproject/login/view/SingUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../view/OtpPage.dart';

class VerifyOtp extends GetxController {
  var isLoading = false.obs;
  var text = ''.obs;
  final auth = FirebaseAuth.instance;

  var actualCode = ''.obs;
  var otp = 0.obs;
  Future<void> verifyNumber(String phoneNumber) async {
    isLoading.value = true;
    print("dddddd$phoneNumber");
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        print("ERROR");
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        actualCode.value = verificationId;

        Get.offAll(OtpPage());
        isLoading.value = false;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        actualCode.value = verificationId;
      },
      timeout: const Duration(seconds: 30),
    );
  }

  Future<void> verifyOTp(smsCode) async {
    isLoading.value = true;
    print("OTP:$smsCode");
    var val = await auth
        .signInWithCredential(PhoneAuthProvider.credential(
            verificationId: actualCode.value, smsCode: smsCode))
        .then((value) {
      if (auth.currentUser != null) {
        Get.offAll(HomePage());
      } else {
        Get.to(SignUp());
      }
      isLoading.value = false;
    }).catchError((value) {
      print("ERROE : $value");
    });
  }
}
