import 'dart:io';

import 'package:IOT/screens/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  return MultiProvider(
      providers: [
        Provider<Home>(create: (_) => Home()),
      ],
        child: 
      Consumer<Home>(
        builder: (ctx, auth, _)=> 
      MaterialApp(
        title: 'IOT',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Color.fromRGBO(255, 188, 117, 1).withOpacity(0.7),
          fontFamily: 'Lato',
        ),
        home: Home(),
        routes: {
          Home.routeName: (ctx) => Home(),
        },
        ),
      )
  );
  }
}

