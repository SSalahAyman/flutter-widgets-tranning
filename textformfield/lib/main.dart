import 'package:flutter/material.dart';
import 'package:textformfield/screens/home_page.dart';

void main() {
  runApp(listview());
}

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
