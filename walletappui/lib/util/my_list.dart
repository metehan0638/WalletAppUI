import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String iconPath;
  final String titleName;
  final String subName;
  const MyTile({
    Key? key,
    required this.iconPath,
    required this.titleName,
    required this.subName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          ListTile(
            title: Text(
              titleName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(subName),
            leading: Image.asset(
              iconPath,
              height: 128,
            ),
            trailing: const Icon(Icons.chevron_right_rounded, size: 40),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
