import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_str/models/quran_tab_model.dart';

class SuraNameItem extends StatelessWidget {
  QuranTabModel model;

  SuraNameItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/sura_number.png"),
            Container(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                model.index.toString(),
                style: GoogleFonts.elMessiri(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.nameEn,
              textAlign: TextAlign.end,
              style: GoogleFonts.elMessiri(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${model.numOfVerses} Verses",
              textAlign: TextAlign.end,
              style: GoogleFonts.elMessiri(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Expanded(
          child: Text(
            model.nameAr,
            textAlign: TextAlign.end,
            style: GoogleFonts.elMessiri(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
