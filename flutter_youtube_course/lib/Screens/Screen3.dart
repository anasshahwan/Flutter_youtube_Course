import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';


class Screen3 extends StatefulWidget {
  static final pageName = '/Screen3';

  final String myValue;
  final double longitude;
  final double latitude;


  Screen3({this.myValue,@required this.latitude,@required this.longitude});

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    customIcon();

  }
  BitmapDescriptor myCustomIcon;



  void customIcon() async{

    myCustomIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.5),'/images/avatar.png');
  }



  Completer<GoogleMapController> _controller = Completer();

  List<Marker> allMarkers = [];


  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: (AppBar(
        title: Text("Screen3"),
      )),

      body: Container(
          child: GoogleMap(

            onMapCreated:  (GoogleMapController controller) {
              _controller.complete(controller);
              setState(() {

                allMarkers =[

                  Marker(
                      infoWindow: InfoWindow(title: 'FirstMarker'),
                      markerId: MarkerId('firstMarker'),position:LatLng(widget.latitude, -widget.longitude) ),
                  Marker(
                      infoWindow: InfoWindow(title: 'second '),
                      icon: BitmapDescriptor.defaultMarkerWithHue(40),

                      markerId: MarkerId('secondMarker'),position:LatLng(widget.latitude - 1.000, -widget.longitude + 2.000) ),
                  Marker(
                      icon: myCustomIcon,
                      onTap: (){
                        print('this is the user location .,');
                      },
                      infoWindow: InfoWindow(title: 'User location  '),

                      markerId: MarkerId('third'),position:LatLng(widget.latitude-5.00, -widget.longitude) ),

                  Marker(
                      icon: BitmapDescriptor.defaultMarker,
                      onTap: (){
                        print('this is the user location .,');
                      },
                      infoWindow: InfoWindow(title: 'This is the Lake   '),

                      markerId: MarkerId('lake '),position:LatLng(37.43296265331129, -122.08832357078792) ),

                ];
              });
            },
            markers: Set.from(allMarkers),
         mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
            target: LatLng(widget.latitude, -widget.longitude), zoom: 10.0),
      )),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

}
