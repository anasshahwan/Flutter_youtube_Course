import 'package:flutter/material.dart';
import 'Screen3.dart';

class CardDetails extends StatelessWidget {

  static final pageName = '/CardDetails';

  final String image_url;
  final String title;
  final String subtitle;
  final String date;

    CardDetails({@required this.image_url,this.title,this.subtitle,this.date});

  @override
  Widget build(BuildContext context) {


    final CardDetails args = ModalRoute.of(context).settings.arguments;


    return Scaffold(
        appBar: AppBar(
          title: Text("CArd Detials"),
        ),
        body: Container(child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(args.title),
          Image.asset(args.image_url),

          Text(args.date),
            RaisedButton(child: Text("Go to Screen 3 "),onPressed: (){

          //    Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));

Navigator.pushNamed(context, Screen3.pageName);
            },),

          ],
        ),),));
  }
}
