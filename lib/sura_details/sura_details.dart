import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_str/models/quran_tab_model.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "SuraDetails";

  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as QuranTabModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          model.nameEn,
          style: GoogleFonts.aBeeZee(fontSize: 20, color: Color(0xFFE2BE7F)),
        ),
        backgroundColor: Color(0xFF202020),
        iconTheme: IconThemeData(color: Color(0xFFE2BE7F)),
      ),
      backgroundColor: Color(0xFF202020),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset("assets/images/details_bg.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Text(
                  model.nameAr,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 24, color: Color(0xFFE2BE7F)),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 50,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 50,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
