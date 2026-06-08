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
      debugShowCheckedModeBanner: false,
    );
  }
}

class ButtonHandlerScreen extends StatefulWidget {
  const ButtonHandlerScreen({super.key});

  @override
  State<ButtonHandlerScreen> createState() => _ButtonHandlerScreenState();
}

class _ButtonHandlerScreenState extends State<ButtonHandlerScreen> {
  // State variable to track current painting index
  int _currentIndex = 0;
  
  // Sample paintings data (add your actual asset paths)
  final List<Map<String, String>> paintings = [
    {
      "image": "assets/apple_CindyLe.jpg", 
      "title": "worm :3",
      "artist": "Cindy Le",
      "year": "2026",
    },
    {
      "image": "assets/loaf_JoanRevolt.webp",
      "title": "Delicious Loaf",
      "artist": "Joan Revolt",
      "year": "2026",
    },
    {
      "image": "assets/peanutButter_DaisyTran.png",
      "title": "Peanut Butter",
      "artist": "Daisy Tran",
      "year": "2026",
    },
  ];

  // Event handler methods
  void _nextPainting() {
    setState(() {
      // brings up the next drawing/painting
      // % accounts for when the user is hitting next many times
      _currentIndex = (_currentIndex + 1) % paintings.length;
    });
  }

  void _previousPainting() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + paintings.length) % paintings.length;
    });
  }
  
  @override
  Widget build(BuildContext context) {

    // get the current painting, usually the first painting in the index
    final currentPainting = paintings[_currentIndex];
    
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Artwork Image
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  currentPainting["image"]!,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              // Artwork Information
              Text(
                currentPainting["title"]!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              Text(
                "${currentPainting["artist"]} (${currentPainting["year"]})",
                style: const TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              // Navigation Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: _previousPainting,
                    label: const Text("Previous"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: _nextPainting,
                    label: const Text("Next"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}