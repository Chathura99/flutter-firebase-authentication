import "package:cloud_firestore/cloud_firestore.dart";
import 'package:flutter/cupertino.dart';

class Usermanagement {
  storeNewuser(user, context) {
    FirebaseFirestore.instance.collection('/users').add({
      'email':user.email,
      'password':user.password
    }).then((value) {
      Navigator.of(context).pop();
      Navigator.pushNamed(context, '/home');
    }).catchError((e) {});
  }
}
