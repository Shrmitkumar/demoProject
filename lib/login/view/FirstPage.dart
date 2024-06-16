import 'package:animate_do/animate_do.dart';
import 'package:basicproject/constant/Functions.dart';
import 'package:basicproject/login/view/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: FadeInLeft(
          duration: Duration(seconds: 1),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Image.network(
                  'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTz2Lg3aVh2dnW9tc1PZEGOb6C-PO0xMTMhtHBEFmv7JR3JoRzT',
                  fit: BoxFit.cover,
                  height: Get.height * 0.5,
                ),
              ),
              Text(
                'Welcome..!',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Spacer(),
              Center(
                  child: InkWell(
                onTap: () {
                  Get.to(LoginPage());
                },
                child: buttonView('Login with phone Number '),
              )),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  signInWithGoogle();
                },
                child: googleLoginButoon('Login with Google'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
