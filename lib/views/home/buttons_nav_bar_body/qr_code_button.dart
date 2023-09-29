import 'package:flutter/material.dart';

import 'package:istad_project_ecommerce/constants.dart';
import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';

class QRViewExample extends StatefulWidget {
  const QRViewExample({super.key});

  @override
  State<QRViewExample> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();
  String? code;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(
            height: defaulHighSizeBox * 8,
          ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: ElevatedButton(
              autofocus: true,
              onPressed: () {
                _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
                    context: context,
                    onCode: (code) {
                      setState(() {
                        this.code = code;
                      });
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              // child: Text(code ?? "Click me"),
              child: Image.asset(
                'assets/images/qrcode.png',
               // color: Colors.blueGrey,
              ),
            ),
          ),
          Center(
            child: Text(
              code ?? 'TAP SCAN',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
