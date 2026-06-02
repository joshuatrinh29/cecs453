/*
Joshua Trinh
CECS 453 - Lab 1
6/1/2026

Github Link:
https://github.com/joshuatrinh29/cecs453
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> handles = [
    '@thisisafakehandle', // social media handle
    '(248)434-5508', // phone number, should be a rickroll
    'joshtrinh29@gmail.com', // email
  ];
  
  final List<String> titles = [
    'Joshua Trinh', // name 
    'Student', // title
  ];
  
  // Icons for each handle
  final List<IconData> handleIcons = [
    Icons.alternate_email, // social media
    Icons.phone, // phone number
    Icons.email, // email
  ];
  
  // now we build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // centers @ x-axis
            crossAxisAlignment: CrossAxisAlignment.center, // centers @ y-axis

            children: [

              // pfp
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image.jpg'),
              ),
              
              SizedBox(height: 20), // space between picture and titles
              
              // title 
              Column(
                children: [
                  for (int i = 0; i < titles.length; i++)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4), // padding length
                      child: Text(
                        titles[i],

                        style: i == 0? // if i = 0 -> name, else, title
                        const TextStyle(fontSize: 24, fontWeight: FontWeight.bold):
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ),
                ],
              ),
              
              // space between titles and handles
              SizedBox(height: 40),
              
              // Handles section with icons
              Column(
                children: [
                  for (int i = 0; i < handles.length; i++)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8), // padding length
                      child: Row(
                        mainAxisSize: MainAxisSize.min,

                        // icons
                        children: [
                          Icon(
                            handleIcons[i],
                            color: Colors.blue,
                            size: 20,
                          ),

                          SizedBox(width: 8), // space between each handle

                          // text
                          Text(
                            handles[i],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                        ],
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