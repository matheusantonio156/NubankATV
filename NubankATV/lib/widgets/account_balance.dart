import 'package:flutter/material.dart';

class AccountBalance extends StatelessWidget {
  final double width;

  const AccountBalance({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Conta',
            style:
                TextStyle(fontSize: width * 0.06, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text('R\$ 100.234,56',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
