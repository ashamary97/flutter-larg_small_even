import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Largest extends StatefulWidget {
  @override
  _LargestState createState() => _LargestState();
}

class _LargestState extends State<Largest> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  TextEditingController num3=TextEditingController();

  String result="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Largest"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: num1,
                decoration: InputDecoration(

                  hintText: "Enter first number",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: num2,
                decoration: InputDecoration(

                  hintText: "Enter second number",
                  border: OutlineInputBorder()
                ),

              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: num3,
                decoration: InputDecoration(

                    hintText: "Enter third number",
                    border: OutlineInputBorder()
                ),

              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){

                setState(() {
                  double getnum1=double.parse(num1.text);
                  double getnum2=double.parse(num2.text);
                  double getnum3=double.parse(num3.text);
                  if(getnum1>getnum2){

                    if(getnum1>getnum3){
                      result="first number is largest";
                    }

                  }
                  else if(getnum2>getnum3){

                    result="second number is largest";
                  }

                  else{

                    result="Third number is largest";
                  }

                });


              },

              child: Text("Find the largest"),),
              Text(result),


            ],
          ),
        ),
      ),
    );
  }
}
