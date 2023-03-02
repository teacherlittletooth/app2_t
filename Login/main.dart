import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.blue
      ),
      home: MyLogin()
    );
  }
}
