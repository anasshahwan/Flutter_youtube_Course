import 'package:flutter/material.dart';
import '../Screens/CardDetails.dart';
import '../comment.dart';

class commentsCardWidget extends StatefulWidget {

  final Comment comment;
  final Function onClick;
  final Widget child1;
  final Widget child2;

  commentsCardWidget({this.comment,this.onClick,this.child1,this.child2});

  @override
  _commentsCardWidgetState createState() => _commentsCardWidgetState();
}

class _commentsCardWidgetState extends State<commentsCardWidget> {


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.comment.image_url),
          maxRadius: 20,
        ),
        title: Column(children: <Widget>[
          widget.child1,
          widget.child2
        ],),
        subtitle: GestureDetector(
            onTap: (){
              print("ok");
          //    Navigator.push(context, MaterialPageRoute(builder: (context)=>CardDetails()));
              Navigator.pushNamed(context, CardDetails.pageName);
            },
            child: Text('subtitle')),
        trailing: GestureDetector(
            onTap: widget.onClick,
            child: Icon(Icons.delete)),
      ),
    );
  }
}






