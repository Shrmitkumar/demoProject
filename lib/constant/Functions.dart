import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:share_plus/share_plus.dart';

Future<void> shareFiles() async {
  await Share.share("Invite Friends ", subject: "Test subject");
}

Future<UserCredential> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(credential);
}

buttonView(String title) {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10),
    width: Get.width,
    padding: const EdgeInsets.symmetric(
      vertical: 19,
    ),
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      title,
      style: TextStyle(
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

googleLoginButoon(String title) {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    width: Get.width,
    padding: const EdgeInsets.symmetric(
      vertical: 19,
    ),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      title,
      style: TextStyle(
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
