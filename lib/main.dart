import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqbalmineraltown_github_io/src/home.dart';

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
      children: [
        Home(), // short introduction, photo?
        Home(), // longer text, about & background
        Home(), // skills & specialties
        Home(), // portfolios
        Home(), // email contacts, network links
      ],
    );
  }
}
