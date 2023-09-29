// ignore_for_file: non_constant_identifier_names
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:country_picker_plus/country_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:istad_project_ecommerce/constants.dart';
import 'package:istad_project_ecommerce/views/home/home_screen.dart';
import 'package:multi_masked_formatter/multi_masked_formatter.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  /// This one is obtained automatically, thanks to the onChange() method.
  String horizontalValAutomatic = "";
  late String countryValue;
  late String stateValue;
  late String cityValue;

  /// The key for the horizontal radio group.
  final GlobalKey<RadioGroupState> horizontalGroupKey =
      GlobalKey<RadioGroupState>();

  /// The controller for the horizontal radio group.
  final RadioGroupController horizontalGroupController = RadioGroupController();

  /// The values for the horizontal radio group.
  final List<Text> horizontalValues = [
    const Text("Male"),
    const Text("Female"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Register Form",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Gender",
              //         style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180,
                      child: TextFormField(
                        autofocus: false,
                        cursorColor: const Color(0xFF3E8094),
                        decoration: const InputDecoration(
                          labelText: "First Name",
                          labelStyle: TextStyle(fontSize: 16),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF3E8094),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: TextFormField(
                        autofocus: false,
                        cursorColor: const Color(0xFF3E8094),
                        decoration: const InputDecoration(
                          labelText: "Last Name",
                          labelStyle: TextStyle(fontSize: 16),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF3E8094),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RadioGroup(
                    key: horizontalGroupKey,
                    controller: horizontalGroupController,
                    values: horizontalValues,
                    orientation: RadioGroupOrientation.horizontal,
                    indexOfDefault: 0,
                    onChanged: (newValue) => setState(
                      () {
                        horizontalValAutomatic = newValue.toString();
                      },
                    ),
                  ),
                ],
              ),
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Text(
              //         "FullName",
              //         style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),

              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Mobile Phone",
              //         style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),
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
                    print(phone.completeNumber);
                  },
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Email",
              //         style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  cursorColor: const Color(0xFF3E8094),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 16),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF3E8094),
                      ),
                    ),
                  ),
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Date of Birth",
              //         style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  inputFormatters: [
                    MultiMaskedTextInputFormatter(
                      masks: ['DD/MM/YYYY'],
                      separator: '/',
                    ),
                  ],
                  autofocus: false,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Date of Birth',
                    hintText: 'DD/MM/YYYY',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "By providing birth date ot claim extra10% off on your Birthday",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CountryPickerPlus(
                      //  isRequired: true,
                      countryLabel: "Country",
                      countrySearchHintText: "Search Country",
                      countryHintText: "Tap to Select Country",
                      stateLabel: "City or Provinces",
                      stateHintText: "Tap to Select State",
                      cityLabel: "Distrits",
                      cityHintText: "Tap to Select Districts",
                      // bottomSheetDecoration: bottomSheetDecoration,
                      // decoration: fieldDecoration,
                      // searchDecoration: searchDecoration,
                      onCountrySaved: (value) {},
                      onCountrySelected: (value) {},
                      onStateSelected: (value) {},
                      onCitySelected: (value) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: defaulHighSizeBox,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage(title: "")),
                  );
                  final materialBanner = MaterialBanner(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    forceActionsBelow: true,
                    content: AwesomeSnackbarContent(
                      title: 'Register Successfully',
                      message:
                          'You have been register successfully with this app.',
                      contentType: ContentType.success,
                      inMaterialBanner: true,
                    ),
                    actions: const [SizedBox.shrink()],
                  );

                  ScaffoldMessenger.of(context)
                    ..hideCurrentMaterialBanner()
                    ..showMaterialBanner(materialBanner);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const SizedBox(
                  width: 400,
                  height: 60,
                  child: Center(
                    child: Text(
                      'CREATE  ACCOUNT',
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
