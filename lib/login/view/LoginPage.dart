import 'package:basicproject/login/controller/emailCtrl.dart';
import 'package:basicproject/login/controller/otpverify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
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
                margin: EdgeInsets.only(top: Get.height * 0.1),
                child: Image.network(
                  'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ5rTTBvkj4rsOFf5R5YQwA81foVo494FSF6X1j-t_ZgxQm761F',
                  fit: BoxFit.cover,
                  width: Get.width,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Enter Your Mobile Number',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('PLease confirm your country code and ')),
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('Enter your mobile number ')),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: IntlPhoneField(
                  autofocus: true,
                  initialCountryCode: 'IN',
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phone Number',
                  ),
                  onChanged: (phone) {
                    snack.phonenumber.value = phone.toString();
                    ctrl.text.value = phone.completeNumber.toString();
                    print("${ctrl.text.value}");
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 60,
              child: TextButton(
                onPressed: () {
                  if (snack.mobileNumber.value == "") {
                    Get.snackbar(
                      icon: Icon(
                        Icons.warning,
                        color: Colors.red,
                      ),
                      backgroundColor: Colors.transparent,
                      "Alert!",
                      " Please Enter Your Phone Number ",
                    );
                    return;
                  }
                  ctrl.verifyNumber(ctrl.text.value);
                },
                child: ctrl.isLoading.value
                    ? CircularProgressIndicator()
                    : Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
