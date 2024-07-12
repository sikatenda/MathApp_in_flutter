import 'dart:ffi';
import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
import 'package:app1/main.dart';

class MyPower extends StatefulWidget {
  const MyPower({super.key});

  @override
  State<MyPower> createState() => _MyPowerState();
}

class _MyPowerState extends State<MyPower> {
  int num1 = 0;
  int num2 = 0;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget? _buildNum1() {
    return null;
  }

  Widget? _buildNum2() {
    return null;
  }

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
              //width: double.infinity,
              //height: double.infinity,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("Power !"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("Jacques Feruzi"),
                  ),
                  Form(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildNum1(),
                      _buildNum2(),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
