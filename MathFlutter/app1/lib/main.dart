import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("FERUZI"),
          ),
          backgroundColor: Color.fromARGB(255, 77, 225, 84),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: EdgeInsets.all(18),
            color: Colors.brown,
            width: 250,
            height: 500,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text("Hello there !"),
                ),
                Text("Jacques Feruzi"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
