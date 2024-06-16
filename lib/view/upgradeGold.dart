import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class upgradeGold extends StatelessWidget {
  const upgradeGold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                'W',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 30),
              )),
          Container(
            margin:
                EdgeInsets.only(top: Get.height * 0.05, left: 20, right: 20),
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
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: Get.width * 0.35,
                height: Get.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyanAccent,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'For One Month ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: TextButton.icon(
                          onPressed: () {
                            Get.dialog(dailogBox());
                          },
                          icon: const Icon(
                            Icons.currency_rupee,
                            color: Colors.blue,
                            size: 20,
                          ),
                          label: const Text(
                            '299',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: Get.width * 0.35,
                height: Get.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'For Two Months ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.currency_rupee,
                            color: Colors.blue,
                            size: 20,
                          ),
                          label: const Text(
                            '499',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: Get.width * 0.35,
                height: Get.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreenAccent,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'For 6 Months ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.currency_rupee,
                            color: Colors.blue,
                            size: 20,
                          ),
                          label: const Text(
                            '1800',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: Get.width * 0.35,
                height: Get.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        'For 1 year  ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: TextButton.icon(
                          onPressed: () {
                            Get.dialog(dailogBox());
                          },
                          icon: const Icon(
                            Icons.currency_rupee,
                            color: Colors.blue,
                            size: 20,
                          ),
                          label: const Text(
                            '2500',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Text(
                    'Do its Later ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}

Widget dailogBox() {
  return AlertDialog(
    insetPadding: EdgeInsets.zero,
    alignment: Alignment.bottomCenter,
    backgroundColor: Colors.transparent,
    title: FadeInUp(
      duration: const Duration(milliseconds: 1000),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/image.jpg")),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 50,
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Scan And Pay ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ))
        ],
      ),
    ),
  );
}
