import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: false,
        title: const Text(
          "Contact US ",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      bottomNavigationBar: ContactUsBottomAppBar(
        companyName: 'Kak Elay',
        textColor: Colors.white,
        backgroundColor: Colors.black,
        email: 'kakelay18052002@gmail.com',
        textFont: 'Sail',
      ),
      backgroundColor: Colors.white,
      body: ContactUs(
        cardColor: Colors.white,
        textColor: Colors.black,
        logo: const AssetImage('assets/images/kakelay.PNG'),
        email: 'kakelay18052002@gmail.com',
        companyName: 'Kak Elay',
        companyColor: Colors.black,
        dividerThickness: 2,
        dividerColor: Colors.black,
        phoneNumber: '+88510600261',
        // website: 'https://github.com/kakelay',
        githubUserName: 'kakelay',
        tagLine: 'Flutter Developer',
        taglineColor: Colors.black45,
        // twitterHandle: 'KakElay',
        instagram: 'KakElay',
        facebookHandle: 'Kak Elay',
      ),
    );
  }
}
