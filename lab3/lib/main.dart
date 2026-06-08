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
  contentText: 'Enjoying the beautiful sunset at the beach!',
  contentImageUrl: 'https://picsum.photos/250?image=51',
  ),
  Post(
  contentText: 'Just got back from a fun vacation in the mountains.',
  contentImageUrl: 'https://picsum.photos/250?image=52',
  ),
];


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: const Text('Social Post')),
      
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(posts[index].contentText),
            ),
            Image.network(posts[index].contentImageUrl),
            ],
            ),
          );
        },
        ),
      ),
    );
  }
}