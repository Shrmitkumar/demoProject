import 'package:animate_do/animate_do.dart';
import 'package:basicproject/Home/component/dialogBox/logOutDailog.dart';
import 'package:basicproject/constant/Functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(
      {super.key, this.name, this.email, this.phoneNumber, this.address});
  final name;
  final email;
  final phoneNumber;
  final address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Profile ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: FadeInLeft(
          duration: Duration(seconds: 1),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK7hZliUI0wg6GfWXLK5V34Ap5hiIrv37Eog&s',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Name : ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                ),
                title: Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Text(
                "Email: ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.grey,
                ),
                title: Text(
                  email,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Text(
                "Phone number ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.phone,
                  color: Colors.green,
                ),
                title: Text(
                  "+91 ${phoneNumber}",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Text(
                "Address: ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.grey,
                ),
                title: Text(
                  address,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: InkWell(
                  onTap: () {
                    Get.dialog(LogOutDialog());
                  },
                  child: buttonView('Log out'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
