import 'package:flutter/material.dart';
import 'package:newsample/screens/evenorodd.dart';
import 'package:newsample/screens/largest.dart';
import 'package:newsample/screens/smallest.dart';

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 130.0,right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Largest()));


          },
          child: Text("Find Largest"),
          ),
          SizedBox(height: 20.0,),
          RaisedButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>Smallest()));

          },
          child: Text("Find smallest"),
          ),
          SizedBox(height: 20.0,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>EvenorOdd()));

          },
          child: Text("Even or Odd"),
          )

        ],
      ),

    );
  }
}
