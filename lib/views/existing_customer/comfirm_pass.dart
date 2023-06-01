import 'package:flutter/material.dart';
import '../../constants.dart';
import '../home/home_screen.dart';

class ComfirmPasswordPage extends StatefulWidget {
  const ComfirmPasswordPage({super.key});

  @override
  State<ComfirmPasswordPage> createState() => _ComfirmPasswordPageState();
}

class _ComfirmPasswordPageState extends State<ComfirmPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Comfirm Singin",
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
                child: TextFormField(
                  cursorColor: const Color(0xFF3E8094),
                  decoration: const InputDecoration(
                    labelText: "New Password",
                    labelStyle: TextStyle(fontSize: 16),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF3E8094),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  cursorColor: const Color(0xFF3E8094),
                  decoration: const InputDecoration(
                    labelText: "Comfirm Password",
                    labelStyle: TextStyle(fontSize: 16),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF3E8094),
                      ),
                    ),
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
                        builder: (context) => const MyHomePage(title: "")),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const SizedBox(
                  width: 400,
                  height: 60,
                  child: Center(
                    child: Text(
                      'SingIn',
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
}
