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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
       // centerTitle: false,
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: defaulHighSizeBox * 3,
            ),
            Center(
              child: Text(
                "Your notification is empty!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
