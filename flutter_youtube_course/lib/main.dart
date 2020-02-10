import 'package:flutter/material.dart';
import 'package:flutter_youtube_course/Screens/CardDetails.dart';
import 'comment.dart';
import 'Widgets/CommentCardWidget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Screens/Screen3.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        MyApp.pageName: (context) => MyApp(),
        Screen3.pageName: (context) => Screen3(),
        CardDetails.pageName: (context) => CardDetails()
      },
    ));

class MyApp extends StatefulWidget {
  static final pageName = '/';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  initState(){
    super.initState();
    getCurrentUserLocation();
  }

  List<Comment> myComments = [Comment(
        image_url: 'images/avatar.png',
        title: 'Good Service',
        Date: "Monday January 15, 2018"), Comment(
        image_url: 'images/beard.png',
        title: 'Clean Car',
        Date: "Monday January 20, 2020"),];

  double userLongitude;
  double userLatitude;


  getCurrentUserLocation() async{

      dynamic currentLocation = LocationData;

      var error;

      var location = new Location();

      try {
        currentLocation = await location.getLocation();
        userLatitude = currentLocation.latitude;
        userLongitude = currentLocation.longitude;
        print(userLongitude);
        print(userLatitude);

      } on PlatformException catch (e) {
        if (e.code == 'PERMISSION_DENIED') {
          error = 'Permission denied';
        }
        currentLocation = null;
      }


  }



  showMyCustomDialog(comment){

    return  Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is better with RFlutter Alert.",
      image: Image.asset('images/avatar.png'),
    ).show();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      GestureDetector(
                        onTap: getCurrentUserLocation,
                        child: GestureDetector(
                          onTap: (){

                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen3(latitude:userLatitude ,longitude: userLongitude,)));

                          },
                          child: Text(
                            'Current Location',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  FlatButton(
                    onPressed: () {
                      myComments.add(Comment(
                          image_url: 'images/diamond.png',
                          title: 'test',
                          Date: 'Try it ..'));

                      setState(() {});
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
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: myComments.map((comment) {
                  return commentsCardWidget(
                    comment: comment,
                    onClick: () {
                      showMyCustomDialog(comment);
                    },
                    child1: Text("Extra Text  1"),
                    child2: Text('Extra child 2.. '),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
