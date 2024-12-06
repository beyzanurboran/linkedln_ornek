import 'package:flutter/material.dart';
import 'package:linkedln_ornek/pages/home_screen.dart';
import 'package:linkedln_ornek/pages/post_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedln_ornek/pages/welcome_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WelcomePage(),
    );
  }
}



