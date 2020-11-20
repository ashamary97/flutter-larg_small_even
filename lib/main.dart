
import 'package:flutter/material.dart';
import 'package:newsample/screens/mainscreen.dart';

void main()=>runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sample"),
          backgroundColor: Colors.red,
        ),
        body: Numbers() ,
      ),
    );
  }
}
