import 'package:flutter/material.dart';
import 'homepage.dart';  // Import AgroConnectScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgroConnect',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFFFFF),
        fontFamily: 'Roboto',
      ),
      home: AgroConnectScreen(),  // Set AgroConnectScreen as the initial screen
      routes: {
        '/homepage': (context) => AgroConnectScreen(),  // Define the route for homepage
      },
    );
  }
}






