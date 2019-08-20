import 'package:flutter/material.dart';
import 'package:flutter_app/FirstFragment.dart';
import 'package:flutter_app/SecondFragment.dart';
import 'package:flutter_app/ThridFragment.dart';
 

void main() => runApp(MaterialApp(
  home: MyApp(),
 
      theme: ThemeData.dark(),
));

class MyApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State <MyApp>{
  int currentIndex=1;

   Widget getCurrentFragment(){
    switch (currentIndex) {
      case 1:
      return FirstFragment();
      break;
      case 2:
      return SecondFragment();
      break;
      case 3:
      return ThridFragment();
      break;
    }  
  }
  setCurrentIndex(int index){
    setState(() {
      currentIndex=index;
    });
    Navigator.of(context).pop();
  }
   @override
  Widget build(BuildContext context){
    return 
     Scaffold(
      drawer: Drawer(
        child:Column(
          children: <Widget>[
            Container(
             padding: EdgeInsets.only(top: 40.0,left: 10.0),
              width:double.infinity,
              height:250.0,
              color: Colors.deepPurple[200],
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[                   
                  Icon
                  (
                     Icons.account_circle,
                      size:70.0,
                      color: Colors.white,

                  ),
                  SizedBox(

                    height: 40.0,
                  ),
                  Text("admin", 
                  style: TextStyle(color:Colors.white, fontSize: 15.0, ),),
                   Text("admin123@gmail.com", 
                   style: TextStyle(color:Colors.white54, fontSize: 10.0, ),)
                  
                  ],
                 
              ),
            ),
            ListTile(
              
              selected: setCurrentIndex ==1 ? true:false,
              onTap: (){
                 setCurrentIndex(1);
              },
              leading: Icon(Icons.ac_unit),
              title: Text('fragment1'),
            ),
            ListTile(
                selected: setCurrentIndex ==2 ? true:false,
                    onTap: (){
                      setCurrentIndex(2);
                    },
               leading: Icon(Icons.ac_unit),
              title: Text('fragment2'),
            ),
            ListTile(
              selected: setCurrentIndex ==3 ? true:false,
                    onTap: (){ 
                      setCurrentIndex(3);
                      },
               leading: Icon(Icons.ac_unit),
              title: Text('fragment3'),
            ),

          ],
        )
        
      ),


      appBar: AppBar(
        title: Text('Drawer demo'),
      ),
      body: getCurrentFragment() 
    );
    
  }
  
}