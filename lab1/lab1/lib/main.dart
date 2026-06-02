/*
Joshua Trinh
CECS 453 - Lab 1
6/1/2026
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> tasks = [
  '@thisisafakehandle', // social media handle
  '(248)434-5508', // phone number, should be a rickroll
  'joshtrinh29@gmail.com', // email
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
        itemCount: tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
            title: Text(tasks[index]),
            );
          },
        ),
      ),
    );
  }
}