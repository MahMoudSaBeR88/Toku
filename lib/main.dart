import 'package:flutter/material.dart';
import 'package:toku/screen/homepage.dart';

void main() {
  runApp(Toku());
}

class Toku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

