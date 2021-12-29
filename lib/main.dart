import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:iqbalmineraltown_github_io/src/sections/sections.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  MyPortfolioApp({Key? key}) : super(key: key);

  final ThemeData _theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: _theme.copyWith(
        scaffoldBackgroundColor: const Color(0xFF1B262C),
        backgroundColor: const Color(0xFF1B262C),
        colorScheme: _theme.colorScheme.copyWith(
          background: const Color(0xFF1B262C),
          primary: const Color(0xFF0F4C75),
          secondary: const Color(0xFF3282B8),
        ),
        textTheme: GoogleFonts.montserratTextTheme().apply(
          displayColor: const Color(0xFFBBE1FA),
          bodyColor: const Color(0xFFBBE1FA),
        ),
      ),
      home: const _PortfolioPage(),
    );
  }
}

class _PortfolioPage extends StatelessWidget {
  const _PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeSection(), // short introduction, photo?
        AboutSection(), // longer text, about & background
        SkillsSection(), // skills & specialties
        PortfolioSection(), // portfolios
        ContactSection(), // email contacts, network links
      ],
    );
  }
}
