import 'package:flutter/material.dart';
class ThridFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
       return MaterialApp(
     
      home: Scaffold(
      
        body: ListView(
          children: [
            Image.asset(
              'test/3.jpg',
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

 