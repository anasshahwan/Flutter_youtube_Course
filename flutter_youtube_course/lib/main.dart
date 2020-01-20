import 'package:flutter/material.dart';

void main() => runApp(

MyApp()
);



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Center(
            child: Text("Thank You !"),
          ),
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
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.favorite_border),
          onPressed: null,
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("My App Title "),
          actions: <Widget>[
            Icon(
              Icons.verified_user,
              color: Colors.pink,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 200,
              width: 200,
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
            Image(
                height: 200,
                width: 200,
                image: AssetImage('images/logo.png')),
            Center(
              child: Text("Test My App",style: TextStyle(
                  color: Colors.blue,fontSize: 20,fontFamily: 'ComingSoon',fontWeight: FontWeight.bold
              ),),
            ),
            Center(
              child: Text("Test My App"),
            )
          ],
        ),
      ),
    )
    ;
  }
}
