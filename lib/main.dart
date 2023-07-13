// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_clothing_store/components/CartPage.dart';
import 'package:flutter_clothing_store/models/detail_page.dart';
import 'package:flutter_clothing_store/models/product_model.dart';

import 'package:flutter_clothing_store/routers/routes.dart';
import 'package:flutter_clothing_store/login_page.dart';
import 'package:flutter_clothing_store/widgets/CartAppBar.dart';
import 'package:flutter_clothing_store/widgets/page_provider.dart';

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
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => PageProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => MyHomeScreen(),
          MyRoutes.homeRoute: (context) => MyHomeScreen(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.CartPage: (context) => CartPage(),
          MyRoutes.Detailpage: (context) => DetailPage(
                product: products[0],
              ),
          //  MyRoutes.CartAppBar: (context) => CartAppBar(),
        },
        // home: Scaffold(
        //   body: MyHomeScreen(),
        // ),
      ),
    );
  }
}
