import 'package:basicproject/Home/view/HomePage.dart';
import 'package:basicproject/constant/Functions.dart';
import 'package:basicproject/login/controller/emailCtrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final _formKey = GlobalKey<FormState>();
  final ctrl = Get.put(EmailCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'SIGN UP ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Image.network(
                  'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ5rTTBvkj4rsOFf5R5YQwA81foVo494FSF6X1j-t_ZgxQm761F',
                  fit: BoxFit.cover,
                  width: Get.width,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  autofocus: false,
                  onChanged: (value) {
                    ctrl.username.value = value;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Enter Your Username ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  autofocus: false,
                  onChanged: (value) {
                    ctrl.email.value = value;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Enter Your email ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  title: Text("+91 ${ctrl.phonenumber}"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  autofocus: false,
                  onChanged: (value) {
                    ctrl.address.value = value;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Enter Your Email Address ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  if (ctrl.username.value == "") {
                    Get.snackbar(
                        icon: Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                        backgroundColor: Colors.transparent,
                        "Alert!",
                        "Enter Your Username");
                    return;
                  }
                  if (ctrl.email.value == "") {
                    Get.snackbar(
                        icon: Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                        backgroundColor: Colors.transparent,
                        "Alert!",
                        "Enter Your email ");
                    return;
                  }
                  if (ctrl.address.value == "") {
                    Get.snackbar(
                        icon: Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                        backgroundColor: Colors.transparent,
                        "Alert!",
                        "Enter Your email address  ");
                    return;
                  }

                  Get.offAll(
                    HomePage(
                      name: ctrl.username.value,
                      email: ctrl.email.value,
                      phoneNumber: ctrl.phonenumber.value,
                      address: ctrl.address.value,
                    ),
                  );
                },
                child: buttonView('Sign up '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
