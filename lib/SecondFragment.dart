import 'package:flutter/material.dart';
class SecondFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
       return MaterialApp(
     
      home: Scaffold(
      
        body: ListView(
          children: [
            Image.asset(
              'test/2.jpg',
              width: 600,
              height: 640,
              fit: BoxFit.cover,
            ),
            
          ],
        ),
      ),
    );
  }
  
  }

 