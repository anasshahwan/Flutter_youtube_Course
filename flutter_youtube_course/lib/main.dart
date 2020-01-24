import 'package:flutter/material.dart';
import 'comment.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  List<Comment> myComments = [

    Comment(image_url:'images/avatar.png',title:'Good Service', Date:"Monday January 20, 2020"),
    Comment(image_url:'images/beard.png',title:'Clean Car', Date:"Monday January 20, 2020"),

  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back),
                    Icon(Icons.menu),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        CircleAvatar(
                          maxRadius: 35,
                          backgroundImage: AssetImage('images/avatar.png'),
                        ),
                        Positioned(right: -3, child: Icon(Icons.verified_user))
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '@Anas shahwan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: 'ComingSoon'),
                        ),
                        Text(
                          'Simple Flutter Ui',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.pin_drop),
                        Text(
                          'Current address',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    FlatButton(
                      onPressed: (){

               myComments.add(Comment(image_url:'images/diamond.png' ,title:'test' ,Date: 'Try it ..'));

                setState(() {
                                 });
                        },
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.green[500],
                          ),
                          Text(
                            'Follow',
                            style: TextStyle(color: Colors.green[500]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '99',
                          style: TextStyle(
                              color: Colors.green[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          'Rides',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '386',
                          style: TextStyle(
                              color: Colors.green[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '358',
                          style: TextStyle(
                              color: Colors.green[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: <Widget>[
                    Text('Rider Complements',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'ComingSoon')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/diamond.png'),
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              'Excellent Service',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/position.png'),
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              'Expert Navigation',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/detergent.png'),
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              'Neat And tidy',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Reviews',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ComingSoon',
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 20,),


                  ],
                ),
                Column(children: myComments.map((comment){
                  return commentsCardWidget(comment:comment,onClick: (){

                    myComments.remove(comment);
                    print("Deleted");
                    setState(() {});
                  },child1: Text("Extra Child 1"),child2: Text('Extra child 2.. '),);
                }).toList(),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


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
        subtitle: Text('subtitle'),
        trailing: GestureDetector(
            onTap: widget.onClick,
            child: Icon(Icons.delete)),
      ),
    );
  }
}