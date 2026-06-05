/*
Joshua Trinh
CECS 453 - Lab 2
6/4/2026

Github Link:
https://github.com/joshuatrinh29/cecs453
*/

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ButtonHandlerScreen(),
      );
    }
  }

  class ButtonHandlerScreen extends StatefulWidget{
    const ButtonHandlerScreen({super.key});

    @override
    State<ButtonHandlerScreen> createState() => _ButtonHandlerScreenState();
  }
  
  class _ButtonHandlerScreenState extends State<ButtonHandlerScreen> {
    
    // 2. Define a state variable
    int _counter = 0;
    
    final List<Map<String, String>> paintings = [
      {
        "image" : "assets/",
        "title" : "title_name",
        "artist" : "artist_name",
        "year" : "year",
      },
    ];

    // 3. Implement the event handler method
    void _incrementCounter() {
      // Use setState() to update the state and rebuild the UI 
      //increments the counter, then % checks for an overflow when 
      // a user presses forward a bunch of times
      setState(() { 
        _counter = (_counter + 1) % paintings.length;
      });
    }

    void _decrementCounter() {
      setState(() { 
        _counter = (_counter - 1) % paintings.length;
      });
    }
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
      ),
      
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              _displayText,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),

          ElevatedButton(
            // Assign the handler method to the onPressed callback 
            onPressed: _incrementCounter,
            child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}