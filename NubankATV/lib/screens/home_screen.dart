import 'package:flutter/material.dart';
import '../widgets/account_balance.dart';
import '../widgets/icon_buttons.dart';
import '../widgets/section.dart';
import '../widgets/credit_card_section.dart';
import '../widgets/discover_more_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        leading: IconButton(
          icon: const Icon(Icons.person_outline, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.visibility_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon:
                const Icon(Icons.mark_email_read_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AccountBalance(width: width),
              SizedBox(height: height * 0.05),
              IconButtons(width: width),
              SizedBox(height: height * 0.05),
              Section(title: "Meus Cartões", width: width),
              const SizedBox(height: 30),
              CreditCardSection(width: width),
              const SizedBox(height: 30),
              Section(title: "Empréstimo", width: width, isLoanSection: true),
              const SizedBox(height: 30),
              Text("Descubra Mais",
                  style: TextStyle(
                      fontSize: width * 0.06, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              DiscoverMoreCard(width: width),
            ],
          ),
        ),
      ),
    );
  }
}
