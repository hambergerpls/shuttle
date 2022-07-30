import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const WalletCard(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 310,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 10,
            spreadRadius: 1,
          )
        ], color: color, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Your Balance',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\RM' + balance.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardNumber.toString(),
                    style: TextStyle(
                      color: Colors.white,
                    )),
                Text(expiryMonth.toString() + './' + expiryYear.toString(),
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
