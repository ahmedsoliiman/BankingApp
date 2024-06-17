import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double Balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    super.key,
    required this.Balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                  Image.asset('lib/icons/visa.png',
                  height: 59,
                  ),
              ],
            ),
            
            Text(
              '\$' + Balance.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(
                  cardNumber.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                //card expiry date
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
