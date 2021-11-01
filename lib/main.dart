import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopping_app/Screens/splashScreen.dart';

import 'Screens/screen.dart';
import 'authen/login.dart';
import 'authen/signUp.dart';
import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: unused_field
  //sync
  //print();
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'ChatApp',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: SplashScreen(),
            routes: {
              "/Screen": (content) => Screen(),
              "/login": (content) => Login(),
              "/register": (content) => Register(),
              "/home": (content) => HomePage(),
            },
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container();
      },
    );
  }
}
