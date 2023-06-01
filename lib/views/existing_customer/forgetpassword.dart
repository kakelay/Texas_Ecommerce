import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:istad_project_ecommerce/constants.dart';
 
import 'package:istad_project_ecommerce/views/existing_customer/otp_code.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  /// This one is obtained automatically, thanks to the onChange() method.
  // String horizontalValAutomatic = "";
  // late String countryValue;
  // late String stateValue;
  // late String cityValue;

  /// The key for the horizontal radio group.
  final GlobalKey<RadioGroupState> horizontalGroupKey =
      GlobalKey<RadioGroupState>();

  /// The controller for the horizontal radio group.
  final RadioGroupController horizontalGroupController = RadioGroupController();

  /// The values for the horizontal radio group.
  // final List<Text> horizontalValues = [
  //   const Text("Male"),
  //   const Text("Female"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Forget Psasword",
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
                      "Please Input Phone Number",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IntlPhoneField(
                  decoration: const InputDecoration(
                    labelText: 'Mobile Phoner',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'KH',
                  onChanged: (phone) {
                  //  print(phone.completeNumber);
                  },
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: TextField(
              //     inputFormatters: [
              //       MultiMaskedTextInputFormatter(
              //         masks: ['XXXXXXX'],
              //         separator: '/',
              //       ),
              //     ],
              //     autofocus: false,
              //     keyboardType: TextInputType.number,
              //     decoration: const InputDecoration(
              //       labelText: 'Code OTP',
              //       hintText: 'Code OTP',
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: defaulHighSizeBox * 4,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OTPCodePage()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const SizedBox(
                  width: 400,
                  height: 60,
                  child: Center(
                    child: Text(
                      'SUBMIT',
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
