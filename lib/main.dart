import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ims/homepage.dart';
import 'package:ims/signuppage.dart';

import './loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA-HcV3-mIAqQmI1UxBzihodMzti0UpNw8",
      appId: "1:1642286404:android:5f0979354e3e836df3db11",
      messagingSenderId: "1642286404",
      projectId: "ims-unity-academy",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => const MyApp(),
        '/signup': (BuildContext context) => const SignUpPage(),
        '/home': (BuildContext context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
