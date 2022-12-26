import 'package:flutter/material.dart';
import 'package:zoomapp/screens/home_screen.dart';
import 'package:zoomapp/screens/login_screen.dart';
import 'package:zoomapp/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZOOM',
      theme: ThemeData.dark().copyWith(
        
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes:{
        '/login':(context) => const LoginScreen(),
        '/home-screen':(context) => const HomeScreen(),
      },
      home: const LoginScreen()
    );
  }
}

