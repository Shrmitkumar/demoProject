import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvitePage extends StatelessWidget {
  InvitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: Get.height * 0.4,
            width: Get.width,
            color: Colors.teal[700],
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: Get.width * 0.32),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYtT5L1WGvHElfjs3gJ5HX5nuk0-DHaNaJ1w&s",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ6aw1DX8UBcXiadukoPYuldqnLN9RScMXfA&s",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Step 1",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Your refer Hotel app to your friend ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "and they sign up  ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Step 2",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "When they check out for 1st time ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Container(
                      height: Get.height * 0.1,
                      width: Get.width * 0.5,
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYtT5L1WGvHElfjs3gJ5HX5nuk0-DHaNaJ1w&s",
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          "You get ",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        subtitle: Text(
                          "500  rupee",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: Get.height * 0.1,
                      width: Get.width * 0.4,
                      child: ListTile(
                        title: Text(
                          "You  gets ",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        subtitle: Text(
                          "500 room rupee",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ6aw1DX8UBcXiadukoPYuldqnLN9RScMXfA&s",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 0.05),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("You'r Invite code ")),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "SHRMKWRG3E ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: Get.height * 0.09,
                      width: Get.width * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 0.2)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuVqh9yCAuJJfDYp-S7I9sF_p8W6-qTKBQ-g&s",
                          height: 40,
                          width: 40,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: Get.height * 0.09,
                      width: Get.width * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 0.2)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {
                            final snackBar = SnackBar(
                              content: const Text('Invite code copied'),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmS4XERCeW5teGDsLO7UEdVfh3MEx7693Frg&s",
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: Get.height * 0.09,
                      width: Get.width * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 0.2)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          onTap: () {},
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmcnGJ1PyeQ4ZPgr3m_hkqXWJ0y9NrnTnT5g&s",
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text("Whatsapp")),
                      SizedBox(
                        width: 60,
                      ),
                      Text("Copy code "),
                      SizedBox(
                        width: 65,
                      ),
                      Text("More "),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "Rewards on friend's checkout",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "8 days left ",
              style: TextStyle(color: Colors.orangeAccent),
            ),
          ),
          Container(
            child: ListTile(
              leading: IconButton(
                  onPressed: () {}, icon: Icon(CupertinoIcons.circle)),
              title: Text("0/1 checkout(s) "),
              subtitle: Text(
                "Earn 400 room rupee",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
          Container(
            child: ListTile(
              leading: IconButton(
                  onPressed: () {}, icon: Icon(CupertinoIcons.circle)),
              title: Text("0/2 checkout(s) "),
              subtitle: Text(
                "Earn 400 room rupee",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
          Container(
            child: ListTile(
              leading: IconButton(
                  onPressed: () {}, icon: Icon(CupertinoIcons.circle)),
              title: Text("0/3 checkout(s) "),
              subtitle: Text(
                "Earn 400 room rupee",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
          Container(
            height: Get.height * 0.18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.02),
                gradient: LinearGradient(
                    end: Alignment.topLeft,
                    begin: Alignment.bottomRight,
                    colors: [Colors.white, Colors.greenAccent.withAlpha(20)])),
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Text(
                    "Start referring! Get 1 more friend(s)to checkout from Room and Earn 400 Room rupee",
                    style: TextStyle(color: Colors.green[900]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 30,
                    width: Get.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.9, color: Colors.green),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      "Invite ",
                      style: TextStyle(color: Colors.green[900]),
                    )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Image.network(
                "https://www.indusind.com/content/dam/indusind-platform-images/productCategory/desktopImage/debitCard/signature_exclusive_debit_card.png"),
          )
        ],
      )),
    );
  }
}
