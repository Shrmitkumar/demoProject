import 'package:basicproject/Home/controller/homePageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogOutDialog extends StatelessWidget {
  LogOutDialog({super.key});
  final _ctrl = Get.put(HomePageCtrl());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      title: Column(
        children: [
          Container(
            child: Text(
              'Are you sure,You want to',
              style: TextStyle(fontSize: 21, color: Colors.black),
            ),
          ),
          Container(
            child: Text(
              'Logout?',
              style: TextStyle(fontSize: 21, color: Colors.orange),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: Get.height * 0.04),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.orange)),
                      child: Text('Cancel',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.1,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _ctrl.logout();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                      // padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.orange)),
                      child: Text(
                        'Yes',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
