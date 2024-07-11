import 'package:flutter/material.dart';
import 'package:app1/main.dart';

class MyPower extends StatelessWidget {
  const MyPower({super.key});

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
              margin: const EdgeInsets.all(8),
              color: Colors.brown,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("You are  year(s) old !"),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("Jacques Feruzi"),
                  ),
                  Builder(builder: (context) {
                    return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyWidget()),
                          );
                        },
                        child: const Text("Return"));
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
