import 'package:app_video_conferencing/screens/home_screen.dart';
import 'package:app_video_conferencing/utils/colours.dart';
import 'package:app_video_conferencing/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Conference',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home':(context) => const HomeScreen(),
      },
      home: const LoginScreen(),
    );
    
  }
}
