import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final double width;

  const IconButtons({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _iconButton(Icons.pix, "Área Pix", width),
        _iconButton(Icons.money, "Pagamentos", width),
        _iconButton(Icons.qr_code, "QR Code", width),
        _iconButton(Icons.attach_money, "Transferir", width),
      ],
    );
  }

  Widget _iconButton(IconData icon, String label, double width) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            icon: Icon(icon, color: const Color(0xFF8A05BE)), onPressed: () {}),
        Text(label,
            style:
                TextStyle(fontSize: width * 0.04, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
