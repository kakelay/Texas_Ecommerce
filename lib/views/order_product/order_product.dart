import 'dart:io';
import 'package:checkout_screen_ui/checkout_page.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

// ignore: must_be_immutable
class OrderProductPage extends StatelessWidget {
  OrderProductPage({Key? key}) : super(key: key);

  Future<void> _nativePayClicked(BuildContext context) async {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Native Pay requires setup')));
  }

  Future<void> _cashPayClicked(BuildContext context) async {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Cash Pay requires setup')));
  }

  late int totalAmount;
  @override
  Widget build(BuildContext context) {
    int? selectedItem = 1;
    totalAmount = 0;

    final demoOnlyStuff = DemoOnlyStuff();

    final GlobalKey<CardPayButtonState> _payBtnKey =
        GlobalKey<CardPayButtonState>();

    Future<void> _creditPayClicked(CardFormResults results) async {
      _payBtnKey.currentState?.updateStatus(CardPayButtonStatus.processing);

      demoOnlyStuff.callTransactionApi(_payBtnKey);

      print(results);
    }

    final List<PriceItem> _priceItems = [
      PriceItem(name: 'Product A', quantity: 1, totalPriceCents: 5200),
      PriceItem(name: 'Product B', quantity: 2, totalPriceCents: 8599),
      PriceItem(name: 'Product C', quantity: 1, totalPriceCents: 2499),
      PriceItem(name: 'Delivery Charge', quantity: 1, totalPriceCents: 1599),
    ];

    const String _payToName = 'Magic Vendor';

    final _isApple = Platform.isIOS;

    const _footer = CheckoutPageFooter(
      // These are example url links only. Use your own links in live code
      privacyLink: 'https://stripe.com/privacy',
      termsLink: 'https://stripe.com/payment-terms/legal',
      note: 'Powered By Not_Stripe',
      noteLink: 'https://stripe.com/',
    );

    Function? _onBack = Navigator.of(context).canPop()
        ? () => Navigator.of(context).pop()
        : null;

    // Put it all together
    return Scaffold(
      appBar: null,
      body: CheckoutPage(
        priceItems: _priceItems,
        payToName: _payToName,
        displayNativePay: true,
        onNativePay: () => _nativePayClicked(context),
        displayCashPay: true,
        onCashPay: () => _cashPayClicked(context),
        isApple: _isApple,
        onCardPay: (results) => _creditPayClicked(results),
        onBack: _onBack,
        payBtnKey: _payBtnKey,
        displayTestData: true,
        footer: _footer,
      ),
    );
  }
}

/// [CardPayButtonState] key to update its displayed color and icon.
class DemoOnlyStuff {
  bool shouldSucceed = true;

  Future<void> provideSomeTimeBeforeReset(
      GlobalKey<CardPayButtonState> _payBtnKey) async {
    await Future.delayed(const Duration(seconds: 2), () {
      _payBtnKey.currentState?.updateStatus(CardPayButtonStatus.ready);
      return;
    });
  }

  Future<void> callTransactionApi(
      GlobalKey<CardPayButtonState> _payBtnKey) async {
    await Future.delayed(const Duration(seconds: 2), () {
      if (shouldSucceed) {
        _payBtnKey.currentState?.updateStatus(CardPayButtonStatus.success);
        shouldSucceed = false;
      } else {
        _payBtnKey.currentState?.updateStatus(CardPayButtonStatus.fail);
        shouldSucceed = true;
      }
      provideSomeTimeBeforeReset(_payBtnKey);
      return;
    });
  }
}
