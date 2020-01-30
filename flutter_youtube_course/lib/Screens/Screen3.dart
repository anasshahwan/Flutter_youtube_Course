
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {

  static final pageName = '/Screen3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
          title: Text("Screen3"),
        )),

        body: Container(child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text("Screen3.. "),
            RaisedButton(child: Text("PRofile Page  "),onPressed: (){

              //    Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));

              Navigator.pushNamed(context, '/');
            },)


          ],
        ),),));
  }
}
