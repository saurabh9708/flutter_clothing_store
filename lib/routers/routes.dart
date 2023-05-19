// ignore_for_file: prefer_const_constructors, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_clothing_store/home_screen.dart';
import 'package:flutter_clothing_store/login_page.dart';
import 'package:go_router/go_router.dart';

class MyRoutes {
  static String loginRoute = "/login";
  static String homeRoute = "/home";
  static String cartPage = "/CartPage";
  static String CartAppBar = "/CartAppBar";
}





// class MyRouter {
//   GoRouter router = GoRouter(
//     routes: [
//       GoRoute(
//         name: AppRouteConstants.loginRouteName,
//         path: '/LoginPage',
//         pageBuilder: (context, state) {
//           return MaterialPage(
//             child: LoginPage(),
//           );
//         },
//       ),
      // GoRoute(
      //   name: AppRouteConstants.loginRouteName,
      //   path: '/Home',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(
      //       child: MyHomeScreen(),
      //     );
      //   },
      // ),
//     ],
//   );
// }
