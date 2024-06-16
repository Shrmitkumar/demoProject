import 'package:animate_do/animate_do.dart';
import 'package:basicproject/login/controller/SplashCtrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final ctrl = Get.put(SplashCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: FadeInUp(
        duration: Duration(seconds: 1),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Center(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScBKMNz7bbGlc2iRzRTzDtz0hTz92BXIDdWg&s'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Successfully Verified ',
              style: TextStyle(color: Colors.black, fontSize: 23),
            )),
          ],
        ),
      )),
    );
  }
}
