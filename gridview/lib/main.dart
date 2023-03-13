import 'package:flutter/material.dart';
import 'package:gridview/screens/home_page.dart';

void main() {
  runApp(Gridview());
}

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
