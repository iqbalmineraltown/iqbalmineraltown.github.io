import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _Header(),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Row(
        children: [
          Container(
            color: Colors.green,
            child: Text(
              'Hai, saya John Doe',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                height: 1.8,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
