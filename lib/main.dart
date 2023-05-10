// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_clothing_store/routers/routes.dart';
import 'package:flutter_clothing_store/login_page.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => MyHomeScreen(),
        MyRoutes.homeRoute: (context) => MyHomeScreen(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
      // home: Scaffold(
      //   body: MyHomeScreen(),
      // ),
    );
  }
}
