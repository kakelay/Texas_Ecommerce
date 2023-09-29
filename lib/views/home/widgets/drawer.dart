// ignore_for_file: deprecated_member_use

import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:istad_project_ecommerce/views/existing_customer/contact_us.dart';
import 'package:istad_project_ecommerce/views/order_history/order_history.dart';
import 'package:istad_project_ecommerce/views/settings/settings.dart';
import 'package:istad_project_ecommerce/views/texas_center/texas_center.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[50],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                      child: Image.asset('assets/images/p1.png'),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: const Row(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Elay',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Kak',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Id: 485887',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.payment,
              color: Colors.black,
            ),
            title: const Text(
              'Order History',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderHistory(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on,
              color: Colors.black,
            ),
            title: const Text(
              'Texas Center',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TexasCenter(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.add_location_outlined,
              color: Colors.black,
            ),
            title: const Text(
              'Texas Partner',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.phone_in_talk,
              color: Colors.black,
            ),
            title: const Text(
              'Contact Us',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContactUsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingPage(),
                ),
              );
            },
          ),
           ListTile(
            leading: const Icon(
              Icons.school_rounded,
              color: Colors.black,
            ),
            title: const Text(
              'Study at CSTAD',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () async {
              const url = 'https://www.istad.co/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.developer_mode,
              color: Colors.black,
            ),
            title: const Text(
              'Develop by KakElay',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () async {
              const url = 'https://kakelay.com/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
        ],
      ),
    );
  }
}
