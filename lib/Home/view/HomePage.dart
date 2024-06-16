import 'package:animate_do/animate_do.dart';
import 'package:basicproject/Home/component/ProfilePage.dart';
import 'package:basicproject/constant/Functions.dart';
import 'package:basicproject/view/knowMore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, this.email, this.name, this.phoneNumber, this.address});
  final email;
  final name;
  final phoneNumber;
  final address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        title: Text(
          'Wizard',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {
                Get.to(ProfilePage(
                  name: name,
                  email: email,
                  phoneNumber: phoneNumber,
                  address: address,
                ));
              },
              child: Icon(Icons.person, color: Colors.white))
        ],
      ),
      body: SafeArea(
        child: FadeInUp(
          duration: Duration(seconds: 1),
          child: ListView(
            children: [
              Container(
                child: ListTile(
                  leading: Text(
                    'Hi.. \n${name}',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  trailing: Container(
                    height: 30,
                    width: Get.width * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Blue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Your Rewards ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  child: Text(
                    '0/7',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Get  membership and get rewards ',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Text(
                    'W',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // TextScroll(
              //   'A membership app offers great convenience by putting membership in members ',
              //   mode: TextScrollMode.bouncing,
              //   velocity: Velocity(pixelsPerSecond: Offset(150, 0)),
              //   delayBefore: Duration(milliseconds: 500),
              //   numberOfReps: 5,
              //   pauseBetween: Duration(milliseconds: 50),
              //   style: TextStyle(color: Colors.white),
              //   textAlign: TextAlign.right,
              //   selectable: true,
              // ),
              Container(
                margin: EdgeInsets.only(
                    top: Get.height * 0.05, left: 20, right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1OuCPW5mfZAHmtZeE_atawcQgMnWkUilpsA&s',
                    fit: BoxFit.cover,
                    width: Get.width,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Get.to(KnowMore());
                },
                child: buttonView('Know More '),
              )
            ],
          ),
        ),
      ),
    );
  }
}
