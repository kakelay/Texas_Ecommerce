import 'package:flutter/material.dart';

import 'package:istad_project_ecommerce/constants.dart';
import 'package:istad_project_ecommerce/views/existing_customer/comfirm_pass.dart';
import 'package:multi_masked_formatter/multi_masked_formatter.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

class OTPCodePage extends StatefulWidget {
  const OTPCodePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OTPCodePagePageState createState() => _OTPCodePagePageState();
}

class _OTPCodePagePageState extends State<OTPCodePage> {
  /// The key for the horizontal radio group.
  final GlobalKey<RadioGroupState> horizontalGroupKey =
      GlobalKey<RadioGroupState>();

  final RadioGroupController horizontalGroupController = RadioGroupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "OTP Code",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Please Input Your OTP Code",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: IntlPhoneField(
              //     decoration: const InputDecoration(
              //       labelText: 'Mobile Phoner',
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(),
              //       ),
              //     ),
              //     initialCountryCode: 'KH',
              //     onChanged: (phone) {
              //       print(phone.completeNumber);
              //     },
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  inputFormatters: [
                    MultiMaskedTextInputFormatter(
                      masks: ['XXXXXXX'],
                      separator: '/',
                    ),
                  ],
                  autofocus: false,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Code OTP',
                    hintText: 'Code OTP',
                  ),
                ),
              ),
              const SizedBox(
                height: defaulHighSizeBox * 4,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ComfirmPasswordPage()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const SizedBox(
                  width: 400,
                  height: 60,
                  child: Center(
                    child: Text(
                      'NEXT',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// This method builds the section at the top of each radio group that shows
  /// which button is selected.
  ///
  /// This shows of the ability to be able to get the selected value in two
  /// different ways.
}
