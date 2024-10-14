import 'package:flutter/material.dart';

class CreditCardSection extends StatelessWidget {
  final double width;

  const CreditCardSection({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.credit_card, color: const Color(0xFF8A05BE)),
                  const SizedBox(width: 8),
                  Text("Cartão de Crédito",
                      style: TextStyle(
                          fontSize: width * 0.06, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 10),
              Text("Fatura Fechada",
                  style: TextStyle(fontSize: 18, color: Colors.black54)),
              const SizedBox(height: 5),
              Text("R\$ 500,00",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text("Vencimento: 10/10/2024",
                  style: TextStyle(fontSize: 18, color: Colors.black54)),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child:
                    Text("Renegociar", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8A05BE),
                  minimumSize: Size(width * 0.9, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
