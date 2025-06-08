import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();


  }

  void getLocation() async {
    Location location = Location(
      lat: 0.0,
      long: 0.0,
    );
    await location.getCurrentLocation();
    print(location.lat);
    print(location.long);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}