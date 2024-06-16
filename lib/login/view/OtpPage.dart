import 'package:basicproject/login/controller/otpverify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controller/emailCtrl.dart';
import 'LoginPage.dart';

class OtpPage extends StatelessWidget {
  OtpPage({Key? key}) : super(key: key);

  final ctrl = Get.put(VerifyOtp());
  final snack = Get.put(EmailCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'OTP',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy53xXGcRm_vS7FGR6B6IhfwHvtjeU9vm_Zx9dyNPTt_VWZdXl',
              fit: BoxFit.fill,
              height: Get.height * 0.4,
              width: Get.width,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  ' Verification Code  ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text('You Have send a verification code  '),
            ),
            Center(
              child: Text('to your mobile'),
            ),
            SizedBox(
              height: 30,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Pinput(
                obscureText: false,
                length: 6,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                onCompleted: (value) {
                  if (value.length == 6) {
                    FocusScope.of(context).requestFocus(FocusNode());
                    ctrl.verifyOTp(value);
                  }
                },
                onChanged: (value) {
                  snack.otp.value = value;
                  ctrl.otp.value = int.parse(value);
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  child: Text(
                    'Edit your Number ?',
                    style: TextStyle(color: Colors.blue),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: Get.width,
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                onPressed: () {
                  if (snack.otp.value == "") {
                    Get.snackbar(
                        icon: Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                        backgroundColor: Colors.transparent,
                        "Alert!",
                        "Enter Your OTP");
                    return;
                  }
                  ctrl.verifyOTp(ctrl.otp.value);
                },
                child: ctrl.isLoading.value
                    ? CircularProgressIndicator()
                    : Text(
                        'Verify',
                        style: TextStyle(color: Colors.white),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
