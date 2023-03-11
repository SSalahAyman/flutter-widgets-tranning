import 'package:flutter/material.dart';

class Firstexample extends StatefulWidget {
  const Firstexample({super.key});

  @override
  State<Firstexample> createState() => _FirstexampleState();
}

class _FirstexampleState extends State<Firstexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text("First Example"),
        ),
      ),
      body: Container(
        child: ListView.builder(

            /// without this itemcount the program going into printing the index in finite loop
            itemCount: 4,
            itemBuilder: (BuildContext context, index) {
              return Container(
                height: 200,
                child: Center(
                  child: Text(
                    "Container $index",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
      ),
    );
  }
}
