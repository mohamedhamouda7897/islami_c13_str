import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_str/models/quran_tab_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as QuranTabModel;
    if (verses.isEmpty) {
      loadSuraFile(model.index);
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          model.nameEn,
          style:
              GoogleFonts.aBeeZee(fontSize: 20, color: const Color(0xFFE2BE7F)),
        ),
        backgroundColor: const Color(0xFF202020),
        iconTheme: const IconThemeData(color: Color(0xFFE2BE7F)),
      ),
      backgroundColor: const Color(0xFF202020),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/details_bg.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    model.nameAr,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 24, color: const Color(0xFFE2BE7F)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemBuilder: (context, index) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: const Color(0xFFE2BE7F))),
                          child: Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: verses[index],
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 24,
                                    color: const Color(0xFFE2BE7F),
                                  ),
                                ),
                                TextSpan(
                                  text: "(${index + 1})",
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: verses.length,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadSuraFile(int index) async {
    String file = await rootBundle.loadString("assets/files/$index.txt");
    List<String> lines = file.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
