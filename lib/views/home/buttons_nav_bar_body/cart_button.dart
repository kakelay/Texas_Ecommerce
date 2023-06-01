import 'package:flutter/material.dart';

import 'package:istad_project_ecommerce/views/add_cart/add_cart.dart';

class CartButton extends StatefulWidget {
  const CartButton({super.key});

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   leading: const BackButton(
      //     color: Colors.white,
      //   ),
      // ),

      body: Center(
        child: AddCartScreen(),
      ),
    );
  }
}
