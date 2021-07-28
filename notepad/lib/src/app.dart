import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './screens/homeScreen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notepad',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: Colors.red,
        splashColor: Colors.white60,
        textTheme: TextTheme(
          button: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
