import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  var myVariable = false;

  int myFollowers = 400;

  String myName = "anas";

  bool isActive = false;

  double age = 25.5;

  dynamic anything = "test";


   void printUserName({String userName,double age}) {

        print("UserName :" + userName + "And my Age is "+age.toString());

   }

   int addTwoNumbers(int firstNumber,int secondNumber){

     return firstNumber+secondNumber;
   }



   List<Widget> myReviews = [

     Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/avatar.png'),
                          maxRadius: 20,
                        ),
                        title: Text('Good Services'),
                        subtitle: Text('Monday, January 20, 2020'),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
     Card(
       child: ListTile(
         leading: CircleAvatar(
           backgroundImage: AssetImage('images/beard.png'),
           maxRadius: 20,
         ),
         title: Text('Good Services'),
         subtitle: Text('Sat, January 20, 2111'),
         trailing: Icon(Icons.more_vert),
       ),
     ),

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

                myReviews.add( Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/avatar.png'),
                      maxRadius: 20,
                    ),
                    title: Text('Good Services'),
                    subtitle: Text('Monday, January 20, 2020'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),);

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
                          '$myFollowers',
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
                Column(children: myReviews.map((myOwnWidet){
                  return myOwnWidet;
                }).toList(),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


