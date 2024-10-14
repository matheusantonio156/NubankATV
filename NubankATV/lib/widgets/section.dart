import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final double width;
  final bool isLoanSection;

  const Section({
    Key? key,
    required this.title,
    required this.width,
    this.isLoanSection = false,
  }) : super(key: key);

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
                  Text(title,
                      style: TextStyle(
                          fontSize: width * 0.06, fontWeight: FontWeight.bold)),
                ],
              ),
              if (isLoanSection) ...[
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
            ],
          ),
        ),
      ),
    );
  }
}
