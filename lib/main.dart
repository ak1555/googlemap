import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
// AIzaSyANRhDDyGJyCcXg_7Ts8_vRc02H4GihTj0

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(9.9312, 76.2673);

  void _onmapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("GOOGLE MAP"),
        ),
      ),
      body: GoogleMap(
        onMapCreated: _onmapCreated,
        markers: new Set<Marker>(),
          initialCameraPosition: CameraPosition(target: _center, zoom: 11.0)),
    );
  }
}
