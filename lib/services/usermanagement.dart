import "package:cloud_firestore/cloud_firestore.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Usermanagement {
  void storeNewUser(UserCredential value, context) {
    var email = value.user!.email;
    var pw = value.user!.uid;
    FirebaseFirestore.instance
        .collection('/users')
        .add({'email': email, 'password': pw}).then((value) {
      Navigator.of(context).pop();
      Navigator.pushNamed(context, '/home');
    }).catchError((e) {
      print(e);
    });
  }
}
