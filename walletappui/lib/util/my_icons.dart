import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final String myIcon;
  final Color myBoxColor;
  final String iconName;
  const MyIcon(
      {Key? key,
      required this.myIcon,
      required this.myBoxColor,
      required this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 17,
                spreadRadius: 3,
              ),
            ],
            color: myBoxColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Image.asset(myIcon),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          iconName,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
