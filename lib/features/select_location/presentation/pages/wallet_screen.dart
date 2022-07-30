import 'package:flutter/material.dart';
import 'package:shuttle/util/wallet_button.dart';
import 'package:shuttle/util/wallet_card.dart';
import 'package:shuttle/util/wallet_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalletScreen extends StatefulWidget {
  WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SWallet'),
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: 10),
          Container(
            height: 198,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                WalletCard(
                  balance: 317.22,
                  cardNumber: 123456789,
                  expiryMonth: 10,
                  expiryYear: 24,
                  color: Colors.green.shade300,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WalletButton(
                  iconImagePath: 'lib/icons/topup.png',
                  buttonText: 'TopUp',
                ),
                WalletButton(
                  iconImagePath: 'lib/icons/money.png',
                  buttonText: 'Send',
                ),
              ],
            ),
          ),
          SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(children: [
              WalletList(
                iconImagePath: 'lib/icons/transactions.png',
                tileTitle: 'History',
                tileSubtitle: 'Transactions Made',
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
