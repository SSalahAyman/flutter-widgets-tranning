import 'package:flutter/material.dart';

import '../screens/first_example.dart';

class Examplecategory extends StatelessWidget {
  String nameofexample;
  Color background;
  VoidCallback ontap;

  Examplecategory(
      {super.key,
      required this.nameofexample,
      required this.background,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: Container(
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.only(top: 35, left: 150),
          height: 100,
          child: Text(
            nameofexample,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
