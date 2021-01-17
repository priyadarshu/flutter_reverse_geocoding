import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp(MyApp());
}
//FlutterConfig.get('API_KEY')

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reverse Geocoding',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GoogleMapController mapController;
  String searchAddr;
  @override
  Widget build(BuildContext context) {
    print(FlutterConfig.get('GOOGLE_MAPS_API_KEY'));
    return Scaffold(
      body: Stack(
        children: [
          // GoogleMap(
          //   onMapCreated: onMapCreated,
          //   //options: GoogleMapOptions(),
          //   initialCameraPosition: CameraPosition(target:),
          // ),
        ],
      ),
    );
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }
}
