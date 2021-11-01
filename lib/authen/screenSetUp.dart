// // ignore_for_file: duplicate_import, file_names

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shopping_app/home.dart';
// import 'package:shopping_app/authen/login.dart';

// import 'package:shopping_app/authen/signUp.dart';
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:firebase_core/firebase_core.dart';

// import 'profile.dart';

// class ScreenSetUp extends StatefulWidget {
//   void main() {
//     WidgetsFlutterBinding.ensureInitialized();
//   }

//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

//   @override
//   _ScreenSetUpState createState() => _ScreenSetUpState();
// }

// class _ScreenSetUpState extends State<ScreenSetUp> {
//   void main() {
//     WidgetsFlutterBinding.ensureInitialized();
//   }

//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return Container();
//         }
//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Screen',
//             theme: ThemeData(
//               primarySwatch: Colors.red,
//               visualDensity: VisualDensity.adaptivePlatformDensity,
//             ),
//             // home: HomePage(),
//             // routes: {
//             //   "/login": (content) => Login(),
//             //   "/SignUp": (content) => Register(),
//             //   "/home": (content) => HomePage(),
//             // },
//             home: Login(),
//             routes: {
//               "/login": (content) => Login(),
//               "/SignUp": (content) => Register(),
//               "../home": (content) => ProfileScreen(),
//             },
//           );
//         }

//         // Otherwise, show something whilst waiting for initialization to complete
//         return Container();
//       },
//     );
//   }
// }
