import 'package:flutter/material.dart';

class Sixthexample extends StatefulWidget {
  const Sixthexample({super.key});

  @override
  State<Sixthexample> createState() => _SixthexampleState();
}

class _SixthexampleState extends State<Sixthexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text("Third Example"),
        ),
      ),
      body: Container(
        child: ListView(
            padding: EdgeInsets.all(10),
            reverse: false, // default is false
            scrollDirection: Axis.vertical, // Defauilt is vertical
            physics: ClampingScrollPhysics(),
            children: [
              Text("Car"),
              Container(
                height: 240,
                child: ListView(
                  children: [
                    Container(
                      height: 200,
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          "car Maecedez",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          "car BMW",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Mobile"),
              Container(
                height: 240,
                child: ListView(children: [
                  Container(
                    height: 200,
                    color: Colors.yellow.withOpacity(0.5),
                    child: const Center(
                      child: Text(
                        "Mobile S20 Ultra mobile",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "Mobile S21 Ultra mobile",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ]),
              )
            ]),
      ),
    );
  }
}
