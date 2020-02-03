import 'package:flutter/material.dart';
import '../Screens/CardDetails.dart';
import '../comment.dart';

class commentsCardWidget extends StatefulWidget {
  final Comment comment;
  final Function onClick;
  final Widget child1;
  final Widget child2;

  commentsCardWidget({this.comment, this.onClick, this.child1, this.child2});

  @override
  _commentsCardWidgetState createState() => _commentsCardWidgetState();
}

class _commentsCardWidgetState extends State<commentsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

         Navigator.pushNamed(context, CardDetails.pageName,arguments: CardDetails(image_url: widget.comment.image_url,title: widget.comment.title,date: widget.comment.Date,));
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.comment.image_url),
            maxRadius: 20,
          ),
          title: Column(
            children: <Widget>[Text(widget.comment.title), Text(widget.comment.Date)],
          ),
          subtitle: Text('subtitle'),
          trailing:
              GestureDetector(onTap: widget.onClick, child: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
