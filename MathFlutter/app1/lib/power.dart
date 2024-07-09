import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("FERUZI"),
          ),
          backgroundColor: Colors.cyan[300],
        ),
        body: const Center(
          child: Image(
            image: AssetImage("images/flutterflow.jpg"),
          ),
        ),
        backgroundColor: Colors.grey[400],
      ),
    ),
  );
}
