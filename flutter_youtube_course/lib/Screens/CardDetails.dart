import 'package:flutter/material.dart';
import 'Screen3.dart';

class CardDetails extends StatelessWidget {

  static final pageName = '/ok';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CArd Detials"),
        ),
        body: Container(child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text("Card Details Screen .. "),

            RaisedButton(child: Text("Go to Screen 3 "),onPressed: (){

          //    Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));

Navigator.pushNamed(context, Screen3.pageName);
            },),

          ],
        ),),));
  }
}
