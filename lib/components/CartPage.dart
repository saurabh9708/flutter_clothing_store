import 'package:flutter/material.dart';

import '../widgets/CartAppBar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CartAppBar(),
        ],
      ),
    );
  }
}
