import 'package:flutter/material.dart';
import 'package:flutter_youtube_course/Screens/CardDetails.dart';
import 'comment.dart';
import 'Widgets/CommentCardWidget.dart';

import 'Screens/Screen3.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
     routes: {
     MyApp.pageName:(context)=> MyApp(),
       Screen3.pageName:(context)=>Screen3(),
      CardDetails.pageName:(context)=>CardDetails()
    },
  ));

class MyApp extends StatefulWidget {
  static final pageName = '/';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  List<Comment> myComments = [

    Comment(image_url:'images/avatar.png',title:'Good Service', Date:"Monday January 20, 2020"),
    Comment(image_url:'images/beard.png',title:'Clean Car', Date:"Monday January 20, 2020"),

  ];

  openMyDialog(comment)  {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blue,
          title: Text('Are You Sure that you want to delete this Card ??..', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'ComingSoon'),),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[

              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,

              child: Text('Yes'),
              onPressed: () {

                        myComments.remove(comment);
        setState(() {
        });
                        Navigator.of(context).pop();

              },
            ),
            FlatButton(
              color: Colors.green,
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),

          ],
        );
      },
    );
  }

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
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



        openMyDialog(comment);
                     },child1: Text("Extra Child 1"),child2: Text('Extra child 2.. '),);
                  }).toList(),)
                ],
              ),
            ),
          ),

    );
  }
}


