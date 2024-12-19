import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_c13_str/cache/cache_helper.dart';
import 'package:islami_c13_str/home/home.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = "/";

  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bodyStyle =
        GoogleFonts.elMessiri(fontSize: 20.0, color: const Color(0xFFE2BE7F));

    const Color primary = Color(0xFFE2BE7F);
    var pageDecoration = PageDecoration(
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 24.0, fontWeight: FontWeight.w700, color: primary),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: const Color(0xFF202020),
      fullScreen: false,
      bodyAlignment: Alignment.center,
      imageAlignment: Alignment.bottomCenter,
      imageFlex: 4,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      globalBackgroundColor: const Color(0xFF202020),
      showDoneButton: true,
      dotsFlex: 2,
      dotsDecorator: const DotsDecorator(color: Colors.white, activeColor: primary),
      done: Text(
        "Finish",
        style: GoogleFonts.elMessiri(fontSize: 16, color: primary),
      ),
      globalHeader: Image.asset("assets/images/header2.png"),
      onDone: () {
        CacheHelper.saveEligibility();
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      showSkipButton: true,
      skip: Text(
        "Skip",
        style: GoogleFonts.elMessiri(fontSize: 16, color: primary),
      ),
      onSkip: () {
        CacheHelper.saveEligibility();
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      next: Text(
        "Next",
        style: GoogleFonts.elMessiri(fontSize: 16, color: primary),
      ),
      pages: [
        PageViewModel(
          title: "Welcome To Islmi App",
          bodyWidget: const SizedBox(),
          image: Image.asset("assets/images/on1.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome To Islami",
          body: "We Are Very Excited To Have You In Our Community",
          image: Image.asset("assets/images/on2.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: Image.asset("assets/images/on3.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: Image.asset("assets/images/on4.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: Image.asset("assets/images/on5.png"),
          decoration: pageDecoration,
        ),
      ],
    );
  }
}
