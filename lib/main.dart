import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:iqbalmineraltown_github_io/src/sections/sections.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        HomeSection(), // skills & specialties
        HomeSection(), // portfolios
        HomeSection(), // email contacts, network links
      ],
    );
  }
}
