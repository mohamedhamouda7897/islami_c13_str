import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c13_str/home/tabs/quran_tab/sura_name_item.dart';
import 'package:islami_c13_str/home/tabs/quran_tab/sura_names_horizontal.dart';
import 'package:islami_c13_str/models/quran_tab_model.dart';
import 'package:islami_c13_str/sura_details/sura_details.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  var searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(onSearchItemChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _searchItem(),
          const SizedBox(
            height: 20,
          ),
          QuranTabModel.searchResultEn.isEmpty
              ? _suraNamesHorizontalList()
              : SizedBox(),
          const SizedBox(
            height: 8,
          ),
          _suraNamesVerticalList(),
        ],
      ),
    );
  }

  onSearchItemChanged() {
    QuranTabModel.searchResultEn.clear();
    String text = searchController.text;
    if (text.isNotEmpty) {
      for (String data in QuranTabModel.suraNamesEnglish) {
        if (data.toLowerCase().contains(text.toLowerCase())) {
          QuranTabModel.searchResultEn.add(data);
        }
      }
    }
    setState(() {});
  }

  Widget _suraNamesHorizontalList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most Recently",
          style: GoogleFonts.elMessiri(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 12,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SuraNamesHorizontal(
                model: QuranTabModel.getModel(index),
              );
            },
            itemCount: QuranTabModel.suraNamesArabic.length,
          ),
        ),
      ],
    );
  }

  Widget _suraNamesVerticalList() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suras List",
            style: GoogleFonts.elMessiri(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                endIndent: 40,
                indent: 40,
                color: Colors.white,
              ),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                        arguments: QuranTabModel.searchResultEn.isEmpty
                            ? QuranTabModel.getModel(index)
                            : QuranTabModel.getSelectedModel(index));
                  },
                  child: SuraNameItem(
                      model: QuranTabModel.searchResultEn.isEmpty
                          ? QuranTabModel.getModel(index)
                          : QuranTabModel.getSelectedModel(index)),
                );
              },
              itemCount: QuranTabModel.searchResultEn.isEmpty
                  ? QuranTabModel.suraNamesArabic.length
                  : QuranTabModel.searchResultEn.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchItem() {
    return TextField(
      controller: searchController,
      style: GoogleFonts.elMessiri(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      cursorColor: const Color(0xFFE2BE7F),
      decoration: InputDecoration(
        labelText: "Sura Name",
        labelStyle: GoogleFonts.elMessiri(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        filled: true,
        fillColor: const Color(0xB3202020),
        prefixIcon: const ImageIcon(
          AssetImage("assets/images/quran.png"),
          color: Color(0xFFE2BE7F),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE2BE7F), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE2BE7F), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE2BE7F), width: 2),
        ),
      ),
    );
  }
}
