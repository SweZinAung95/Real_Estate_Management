import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDLHaD5tSADQPjHGy-tdIo5lcsF5f-E0G0",
          projectId: "realestate-managementdb",
          messagingSenderId: "995196325695",
          appId: "1:995196325695:web:b68203984340c66f354d8a"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text Widget Example")),
        body: Center(child: Text("Welcome to Javatpoint")),
      ),
      /*home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Error');
          }
          return CircularProgressIndicator();
        },
      ),*/
    );
  }
}
