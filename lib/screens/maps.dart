import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {

  Set<Marker> getMarker() {
    return <Marker>{
      const Marker(
          markerId: MarkerId('Nearest Hospital'),
          position: LatLng(28.4744, 77.5040),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(title: 'Hospital')
      )
    };
  }

  late GoogleMapController myController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GoogleMap(
      markers: getMarker(),
      mapType: MapType.normal,
      initialCameraPosition: const CameraPosition(
        target: LatLng(28.4744, 77.5040),
        zoom: 14.0,
      ),
      onMapCreated: (GoogleMapController controller){
        myController = controller;
      },
    ));
  }
}