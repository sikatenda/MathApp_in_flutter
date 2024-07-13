import 'package:flutter/material.dart';
import 'package:app1/main.dart';
import 'package:flutter/services.dart';

class MyPower extends StatefulWidget {
  const MyPower({super.key});

  @override
  State<MyPower> createState() => _MySquareState();
}

class _MySquareState extends State<MyPower> {
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();

  double exponent = 0.0;
  double base = 0.0;
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appBar: AppBar(
        // title: const Center(
        //   child: Text("FERUZI"),
        // ),
        //  backgroundColor: Color.fromARGB(255, 77, 225, 84),
        // ),
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(6),
              color: Colors.brown,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("Get the power of a number  !",
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 40),
                    child: Text("$result",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 35)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40.0,
                          width: 60.0,
                          child: TextField(
                              controller: textController1,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: const TextStyle(fontSize: 21),
                              decoration: const InputDecoration(
                                filled: true,
                                hintText: "00",
                                border: OutlineInputBorder(),
                              )),
                        ),
                        SizedBox(
                          height: 40.0,
                          width: 60.0,
                          child: TextField(
                              controller: textController2,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: const TextStyle(fontSize: 21),
                              decoration: const InputDecoration(
                                filled: true,
                                hintText: "0.0",
                                border: OutlineInputBorder(),
                              )),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0)),
                          onPressed: () {
                            setState(() {
                              textController1.clear();
                              textController2.clear();
                              result = 0.0;
                            });
                          },
                          child: const Text(
                            'Clear',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Builder(builder: (context) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.all(16),
                          fixedSize: const Size.fromWidth(250),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text("Process"));
                  }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Builder(builder: (context) {
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
                                  builder: (context) => const MyWidget()),
                            );
                          },
                          child: const Text("Back"));
                    }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
