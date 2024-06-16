import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KnowMore extends StatelessWidget {
  const KnowMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.white,
            )),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: FadeInRight(
        duration: Duration(seconds: 1),
        child: ListView(
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: const Text(
                    'W',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 30),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Invite Friends to Wizards ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const Center(
              child: Text(
                'Invite & get your membership extended ',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.2, color: Colors.grey)),
              margin: const EdgeInsets.only(top: 40, right: 10, left: 10),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          height: Get.height * 0.06,
                          width: Get.width * 0.25,
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'If your friend becomes ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.25,
                        ),
                        SizedBox(
                          height: Get.height * 0.06,
                          width: Get.width * 0.35,
                          child: const Text(
                            'Your membership extends by ',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    color: Colors.grey[700],
                    height: 0.4,
                    width: Get.width,
                  ),
                  ListTile(
                    title: Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: const Text(
                          'W',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w200,
                              fontSize: 25),
                        )),
                    subtitle: Container(
                        margin: EdgeInsets.only(right: Get.width * 0.37),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'BLUE MEMBER',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    trailing: const Text(
                      '+3 months ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: const Text(
                          'W',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: 25),
                        )),
                    subtitle: Container(
                        margin: EdgeInsets.only(right: Get.width * 0.37),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'SILVER MEMBER',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    trailing: const Text(
                      '+4 months ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: ListTile(
                      title: Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: Text(
                            'W',
                            style: TextStyle(
                                color: Colors.yellow[800],
                                fontWeight: FontWeight.w200,
                                fontSize: 25),
                          )),
                      subtitle: Container(
                          margin: EdgeInsets.only(right: Get.width * 0.37),
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'GOLD MEMBER',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      trailing: const Text(
                        '+6 months ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Unlimited membership extension up for grab ',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: const Text(
                  'Terms & Conditions ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
