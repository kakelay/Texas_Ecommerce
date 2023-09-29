import 'package:flutter/material.dart';

import 'package:istad_project_ecommerce/constants.dart';
import 'package:lottie/lottie.dart';

class Notificationbutton extends StatefulWidget {
  const Notificationbutton({super.key});

  @override
  State<Notificationbutton> createState() => _NotificationbuttonState();
}

class _NotificationbuttonState extends State<Notificationbutton> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: defaulHighSizeBox * 2,
          ),
          const Text(
            " Your notification is empty!",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          Lottie.asset(
            height: 400,
            fit: BoxFit.cover,
            'assets/lotties/empty.json',
          ),
        ],
      ),
    );
  }
}
