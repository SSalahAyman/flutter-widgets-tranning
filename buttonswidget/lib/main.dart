import 'package:buttonswidget/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Buttonswidget());
}

class Buttonswidget extends StatelessWidget {
  const Buttonswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
