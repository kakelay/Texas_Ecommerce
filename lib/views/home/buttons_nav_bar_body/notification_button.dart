import 'package:flutter/material.dart';

import 'package:istad_project_ecommerce/constants.dart';

class Notificationbutton extends StatefulWidget {
  const Notificationbutton({super.key});

  @override
  State<Notificationbutton> createState() => _NotificationbuttonState();
}

class _NotificationbuttonState extends State<Notificationbutton> {
  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: defaulHighSizeBox * 2,
          ),
          Text(
            " Your notification is empty!",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
