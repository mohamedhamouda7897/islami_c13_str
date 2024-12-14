import 'package:flutter/material.dart';
import 'package:islami_c13_str/home/home.dart';
import 'package:islami_c13_str/onBoarding/onboarding.dart';
import 'package:islami_c13_str/sura_details/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.routeName,
      routes: {
        SuraDetailsScreen.routeName: (context) =>  SuraDetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
      },
    );
  }
}
