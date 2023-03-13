import 'package:flutter/material.dart';

class Firstexample extends StatefulWidget {
  const Firstexample({super.key});

  @override
  State<Firstexample> createState() => _FirstexampleState();
}

class _FirstexampleState extends State<Firstexample> {
  List mobile = [
    {"name": "s20 ultra", "screen": "6.4"},
    {"name": "s21 ultra", "screen": "6.5"},
    {"name": "s10 ultra", "screen": "6.2"},
    {"name": "s9 ultra", "screen": "6.7"},
    {"name": "iphone 12 pro max", "screen": "6.1"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text("Firstexample"),
        ),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: mobile.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (BuildContext, index) {
            return Card(
              margin: const EdgeInsets.all(9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.only(top: 15, left: 23),
                tileColor: Colors.red.withOpacity(0.6),
                title: Text(mobile[index]["name"]),
                subtitle: Text("screen : ${mobile[index]["screen"]}"),
              ),
            );
          },
        ),
      ),
    );
  }
}
