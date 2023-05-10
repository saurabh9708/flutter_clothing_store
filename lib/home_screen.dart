import 'package:flutter/material.dart';

import 'widgets/HomeAppBar.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HomeAppBar(),
        ],
      ),
    );
  }
}
