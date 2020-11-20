import 'package:flutter/material.dart';

class Smallest extends StatefulWidget {
  @override
  _SmallestState createState() => _SmallestState();
}

class _SmallestState extends State<Smallest> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  TextEditingController num3=TextEditingController();

  String result="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Smallest"),
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
                  if(getnum1<getnum2){

                    if(getnum1<getnum3){
                      result="first number is smallest";
                    }

                  }
                  else if(getnum2<getnum3){

                    result="second number is smallest";
                  }

                  else{

                    result="Third number is smallest";
                  }

                });


              },

                child: Text("Find the smallest"),),
              Text(result),


            ],
          ),
        ),
      ),
    );
  }
}
