import 'package:flutter/material.dart';
import 'package:flutter/firebase_core.dart';
import 'dart:async';

import 'package:quiz/screens/Login.dart';




Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}







class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
         primarySwatch: Colors.blue,
       ),
      home: Login(),
    );
  }
}


