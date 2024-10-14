import 'package:flutter/material.dart';

class DiscoverMoreCard extends StatelessWidget {
  final double width;

  const DiscoverMoreCard({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('assets/imagem.png'),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Seguro de Vida",
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text("Cuide bem do que importa.",
                      style: TextStyle(
                          fontSize: width * 0.04, color: Colors.black54)),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child:
                        Text("Conhecer", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8A05BE)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
