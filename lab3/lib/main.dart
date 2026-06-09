/*
Joshua Trinh
CECS 453 - Lab 3
6/8/2026


Github Link:
https://github.com/joshuatrinh29/cecs453
*/

import 'package:flutter/material.dart';

class Post {
  final String contentText;
  final String contentImageUrl;

  Post({
    required this.contentText,
    required this.contentImageUrl,
  });
}


List<Post> posts = [
  Post(
  contentText: ' Asking for help is a sign of self-respect and self-awareness.',
  contentImageUrl: 'https://picsum.photos/250?image=51',
  ),

  Post(
  contentText: 'Every decision I make is supported by my whole and inarguable experience.',
  contentImageUrl: 'https://picsum.photos/250?image=52',
  ),

  Post(
    contentText: 'I am more than my circumstances dictate.',
    contentImageUrl: 'https://picsum.photos/250?image=53',
  ),

  Post(
    contentText: 'I see now that the circumstances of one’s birth are irrelevant. It is what you do with the gift of life that determines who you are.',
    contentImageUrl: 'https://picsum.photos/250?image=54',
  ),

  Post(
    contentText: 'I can control how I respond to things that are confronting.',
    contentImageUrl: 'https://picsum.photos/250?image=55',
  ),

  Post(
    contentText: 'I do not have to linger in dark places; there is help for me here.',
    contentImageUrl: 'https://picsum.photos/250?image=56',
  ),

  Post(
    contentText: 'I grow towards my interests, like a plant reaching for the sun.',
    contentImageUrl: 'https://picsum.photos/250?image=57',
  ),

];


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(posts[index].contentImageUrl),
            ), 
            Text(posts[index].contentText),
            ],
            ),
          );
        },
        ),
      ),
    );
  }
}