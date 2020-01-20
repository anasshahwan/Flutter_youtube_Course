import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    drawer: Drawer(
      child: Center(child: Text("Thank You !"),),
    ),
    bottomNavigationBar: BottomAppBar(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          Icon(Icons.accessibility),
          Icon(Icons.exit_to_app),
          Icon(Icons.account_circle),

        ],),
      ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: null,),
    appBar: AppBar(centerTitle: true,

    title: Text("My App Title "),

    actions: <Widget>[
      Icon(Icons.verified_user,color: Colors.pink,),

    ],


    ),

  ),
));
