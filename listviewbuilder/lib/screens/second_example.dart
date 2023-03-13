import 'package:flutter/material.dart';

class Secondexample extends StatefulWidget {
  const Secondexample({super.key});

  @override
  State<Secondexample> createState() => _SecondexampleState();
}

class _SecondexampleState extends State<Secondexample> {
  /*
  list has kinds of mobiles that include map about every mobile with its properties about each mobile
  */
  List mobile = [
    {"name": "s20 ultra", "screen": "6.4", "cpu": "8 core"},
    {"name": "s21 ultra", "screen": "6.5", "cpu": "8 core"},
    {"name": "s10", "screen": "6.2", "cpu": "7 core"},
    {"name": "s9", "screen": "4.7", "cpu": "6 core"},
    {"name": "iphone 12 pro max", "screen": "6.1", "cpu": "10 core"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: const Center(
          child: Text("Second Example"),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: mobile.length,
          itemBuilder: (BuildContext, index) {
            return ListTile(
              title: Text(mobile[index]['name']),
              subtitle: Text("Screen : ${mobile[index]['screen']}"),
              trailing: Text("Core : ${mobile[index]['cpu']}"),
            );
          },
        ),
      ),
    );
  }
}
