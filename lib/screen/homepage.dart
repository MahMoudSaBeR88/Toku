import 'package:flutter/material.dart';

import '../components/category_items.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff45322B),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              // Navigate to a new page when the category is tapped
              // Replace 'YourNewPage' with the actual page you want to navigate to
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NumbersPage(),
                ),
              );
            },
            text: 'Number',
            color: const Color(0xffEF9235),
          ),
          Category(
            text: 'FamilyMembers',
            color: const Color(0xff5D8B3E),
          ),
          Category(
            text: 'Colors',
            color: const Color(0xFF854CAE),
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xFF51B0D5),
          ),
        ],
      ),
    );
  }
}
