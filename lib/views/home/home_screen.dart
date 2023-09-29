import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:istad_project_ecommerce/views/home/buttons_nav_bar_body/cart_button.dart';
import 'package:istad_project_ecommerce/views/home/buttons_nav_bar_body/home_button.dart';
import 'package:istad_project_ecommerce/views/home/buttons_nav_bar_body/personal_button.dart';
import 'package:istad_project_ecommerce/views/home/buttons_nav_bar_body/qr_code_button.dart';
import 'package:istad_project_ecommerce/views/home/buttons_nav_bar_body/notification_button.dart';

import 'widgets/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  void _navigateBottomBar(int index) {
    setState(
      () {
        _selectedIndex = (index);
      },
    );
  }

  final List<Widget> _pages = [
    const CartButton(),
    const QRViewExample(),
    const HomeButton(),
    const Notificationbutton(),
    const PersonalButton(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _selectedIndex,
        items: [
          CurvedNavigationBarItem(
            child: SvgPicture.asset(
              "assets/icons/chat.svg",
              height: 25,
            ),
            label: 'Cart',
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
          CurvedNavigationBarItem(
            child: SvgPicture.asset(
              "assets/icons/qrcode.svg",
              height: 25,
            ),
            label: 'Qrcode',
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
          CurvedNavigationBarItem(
            child: SvgPicture.asset(
              "assets/icons/home1.svg",
              height: 25,
            ),
            label: 'Home',
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
          CurvedNavigationBarItem(
            child: SvgPicture.asset(
              "assets/icons/notification1.svg",
              height: 25,
            ),
            label: 'Notification',
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
          CurvedNavigationBarItem(
            child: SvgPicture.asset(
              "assets/icons/personal-card.svg",
              height: 30,
            ),
            label: 'Personal',
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
        color: Colors.grey.shade100,
        buttonBackgroundColor: Colors.blueGrey.shade100,
        backgroundColor: Colors.white,
        iconPadding: Checkbox.width,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {
          _navigateBottomBar(index);
        },
        letIndexChange: (index) => true,
      ),
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 28,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          "Texas",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),

      // Body
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: CustomScrollView(
          slivers: [
            _pages[_selectedIndex],
          ],
        ),
      ),
      drawer: const DrawerPage(),
    );
  }
}
