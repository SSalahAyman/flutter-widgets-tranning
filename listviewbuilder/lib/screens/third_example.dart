import 'package:flutter/material.dart';

/*
this example about list view .separated the same example 2 but with separator between each widget in the list 
*/

class Thirdexample extends StatefulWidget {
  const Thirdexample({super.key});

  @override
  State<Thirdexample> createState() => _ThirdexampleState();
}

class _ThirdexampleState extends State<Thirdexample> {
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
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text("Third Example"),
        ),
      ),
      body: Container(
        child: ListView.separated(
            itemBuilder: (BuildContext, index) {
              return ListTile(
                title: Text(mobile[index]["name"]),
                subtitle: Text("Screen : ${mobile[index]["screen"]}"),
                trailing: Text("cpu : ${mobile[index]["cpu"]}"),
              );
            },

             /*
             here I seperate between each widget(list tile ) by a Divider / and I can seperate by any widget such as text , column ,.....
             */
            separatorBuilder: (BuildContext, index) {
              return const Divider(
                thickness: 2,
                color: Colors.red,
                height: 2,
              );
            },
            itemCount: mobile.length),
      ),
    );
  }
}
