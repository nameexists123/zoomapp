import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoomapp/screens/home_screen.dart';
import 'package:zoomapp/screens/login_screen.dart';
import 'package:zoomapp/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

