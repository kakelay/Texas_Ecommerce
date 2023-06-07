import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:istad_project_ecommerce/constants.dart';
import 'package:istad_project_ecommerce/views/existing_customer/register.dart';
import 'package:istad_project_ecommerce/views/home/home_screen.dart';

import '../../existing_customer/contact_us.dart';
import '../../existing_customer/forgetpassword.dart';

class PersonalButton extends StatefulWidget {
  const PersonalButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PersonalButtonState createState() => _PersonalButtonState();
}

class _PersonalButtonState extends State<PersonalButton> {
  // Initially password is obscure
  bool _obscureText = true;
  bool _isObscure = true;
  // ignore: unused_field
  late String _password;

  // Toggles the password show status
  // ignore: unused_element
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "EXSITING CUSTOMER",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: defaulHighSizeBox,
                  ),
    
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IntlPhoneField(
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
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
    
                  ///  text new update
                  const SizedBox(
                    height: defaulHighSizeBox,
                  ),
    
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: "Password",
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaulHighSizeBox * 3.5,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(title: ""),
                        ),
                      );
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    child: const SizedBox(
                      width: 400,
                      height: 60,
                      child: Center(
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaulHighSizeBox,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPasswordPage()),
                      );
                    },
                    child: const Text(
                      'Forget password?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaulHighSizeBox,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    child: const SizedBox(
                      width: 400,
                      height: 60,
                      child: Center(
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaulHighSizeBox,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactUsPage()),
                      );
                    },
                    child: const Text(
                      'Contact us',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'Cam');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}


 
// import 'package:flutter/material.dart';
// import 'package:flutter_login/flutter_login.dart';
// import 'package:istad_project_ecommerce/views/home/home_screen.dart';
 

// const users = {
//   'kakelay@gmail.com': '12345',
//   'istad@gmail.com': '12345',
// };

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   Duration get loginTime => const Duration(milliseconds: 2250);

//   Future<String?> _authUser(LoginData data) {
//     debugPrint('Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(data.name)) {
//         return 'User not exists';
//       }
//       if (users[data.name] != data.password) {
//         return 'Password does not match';
//       }
//       return null;
//     });
//   }

//   Future<String?> _signupUser(SignupData data) {
//     debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) {
//       return null;
//     });
//   }

//   Future<String> _recoverPassword(String name) {
//     debugPrint('Name: $name');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(name)) {
//         return 'User not exists';
//       }
//       return Future.error(Object);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogin(
//       title: 'ECORP',
//       logo: const AssetImage('assets/images/ecorp-lightblue.png'),
//       onLogin: _authUser,
//       onSignup: _signupUser,
//       loginProviders: <LoginProvider>[
//         LoginProvider(
//           icon: Icons.abc,
//           label: 'Google',
//           callback: () async {
//             debugPrint('start google sign in');
//             await Future.delayed(loginTime);
//             debugPrint('stop google sign in');
//             return null;
//           },
//         ),
//         LoginProvider(
//           icon: Icons.abc,
//           label: 'Facebook',
//           callback: () async {
//             debugPrint('start facebook sign in');
//             await Future.delayed(loginTime);
//             debugPrint('stop facebook sign in');
//             return null;
//           },
//         ),
//         LoginProvider(
//           icon: Icons.abc,
//           callback: () async {
//             debugPrint('start linkdin sign in');
//             await Future.delayed(loginTime);
//             debugPrint('stop linkdin sign in');
//             return null;
//           },
//         ),
//         LoginProvider(
//           icon: Icons.abc,
//           callback: () async {
//             debugPrint('start github sign in');
//             await Future.delayed(loginTime);
//             debugPrint('stop github sign in');
//             return null;
//           },
//         ),
//       ],
//       onSubmitAnimationCompleted: () {
//         Navigator.of(context).pushReplacement(MaterialPageRoute(
//           builder: (context) =>const  MyHomePage(title: ""),
//         ));
//       },
//       onRecoverPassword: _recoverPassword,
//     );
//   }
// }
