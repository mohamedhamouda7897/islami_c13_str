import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Time Tab",
            style: GoogleFonts.elMessiri(fontSize: 30, color: Colors.white),
          )
        ],
      ),
    );
  }
}
