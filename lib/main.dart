import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqbalmineraltown_github_io/src/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
        platform: TargetPlatform.android,
        scaffoldBackgroundColor: _bgColor,
        primaryColor: _primaryColor,
        canvasColor: _bgColor,
        textTheme: GoogleFonts.averiaLibreTextTheme(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

const Color _primaryColor = Color(0xFF1122AA);
const Color _bgColor = Color(0xFF010122);
