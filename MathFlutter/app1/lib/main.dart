import 'package:app1/squareRoot.dart';
import 'package:flutter/material.dart';
import 'package:app1/power.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("FERUZI"),
          ),
          backgroundColor: const Color.fromARGB(255, 77, 225, 84),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(2),
              color: Colors.brown,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text("Welcom !",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                  const SizedBox(
                    height: 250,
                    width: 250,
                    child: Image(
                      image: AssetImage('images/images.png'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text("Two math functions available"),
                  ),
                  Builder(
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.all(16),
                              fixedSize: const Size.fromWidth(250),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyPower()),
                              );
                            },
                            child: const Text("Power Page")),
                      );
                    },
                  ),
                  Builder(builder: (context) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.all(16),
                          fixedSize: const Size.fromWidth(250),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MySquare()),
                          );
                        },
                        child: const Text("SquareRout page"));
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
