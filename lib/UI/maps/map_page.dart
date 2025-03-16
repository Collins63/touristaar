import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:touristaar/CONSTANTS/app_bar.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Location _locationService = Location();
  late GoogleMapController _mapController;
  LatLng? _currentLocation;
  static const LatLng _pGooglePLex = LatLng(37.4223, -122.0848);
   @override
  void initState() {
    super.initState();
    _checkLocationPermission();
  }
  Future<void> _getCurrentLocation() async {
    try {
      final locationData = await _locationService.getLocation();
      setState(() {
        _currentLocation = LatLng(locationData.latitude!, locationData.longitude!);
        print(_currentLocation);
      });
    } catch (e) {
      print("Error getting location: $e");
    }
  }
   void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  Future<void> _checkLocationPermission() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      print("Location Permission Granted");
    } else {
      print("Location Permission Denied");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50)
        ,child: AppBar(
          centerTitle: true,
          title: Text("Maps" , style: appStyle(14, Colors.white, FontWeight.normal),),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(kLightBlue.value),
          shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
                )
              ),
        )
      ),
      body: _currentLocation == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _currentLocation!,
                zoom: 15,
              ),
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
            ),
    );
  }
}