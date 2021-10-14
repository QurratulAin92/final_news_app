import 'package:flutter/material.dart';
import 'package:news_app/categories.dart';
import 'package:news_app/home.dart';
import 'package:news_app/news.dart';
import 'package:news_app/profile.dart';
import 'package:news_app/register.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    
    return  FutureBuilder(
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
         home: News(),
         routes: {
           "/register":(context) => Register(),
           "/home":(context) => Home(),
           "/profile":(context)=> Profile(),
           "/news":(context)=> News(),
           "/categories":(context)=> Categories(),
         },
    );
  }
   return Container();
}
);
}
}

