import 'package:flutter/material.dart';

class EvenorOdd extends StatefulWidget {
  @override
  _EvenorOddState createState() => _EvenorOddState();
}

class _EvenorOddState extends State<EvenorOdd> {
  TextEditingController num=TextEditingController();
  String result="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                controller: num,
                decoration: InputDecoration(

                    hintText: "Ente number",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),

              RaisedButton(onPressed: (){

                setState(() {
                  double getnum=double.parse(num.text);

                  if(getnum%2==0){

                    result="Number is EVEN";
                  }
                  else{

                    result="Number id ODD";
                  }

                });


              },

                child: Text("Even or ODD"),),
              Text(result.toString()),


            ],
          ),
        ),
      ),
    );
  }
}
