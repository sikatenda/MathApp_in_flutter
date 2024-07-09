import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  //int? number;

  void increase() {
    int? num1;
    num1 = (num1! + 1);
  }

  //Addition a = Addition();

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
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: EdgeInsets.all(8),
              color: Colors.brown,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: const Text("You are year(s) old !"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("Jacques Feruzi"),
                  ),
                  FilledButton(onPressed: () {}, child: const Text("Process")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Addition {
  //properties
  int? number;

  //Method
  void add(number) {
    number++;
  }
}
