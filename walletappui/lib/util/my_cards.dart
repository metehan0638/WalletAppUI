import 'package:flutter/material.dart';


class MyCards extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expireMonth;
  final int expireYear;
  final Color color;
  const MyCards(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expireMonth,
      required this.expireYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        padding: const EdgeInsets.all(16.0),
        width: 300,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Balance',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '\$$balance',
            style: const TextStyle(
              fontSize: 34,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //card number
          // ignore: prefer_const_literals_to_create_immutables
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '**** $cardNumber',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              //card expire date
              Text(
                '$expireMonth/ $expireYear',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          
        ]),
      ),
    );
  }
}
