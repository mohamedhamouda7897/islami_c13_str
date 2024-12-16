import 'package:flutter/material.dart';
import 'package:islami_c13_str/cache/cache_helper.dart';
import 'package:islami_c13_str/home/home.dart';
import 'package:islami_c13_str/my_theme_data.dart';
import 'package:islami_c13_str/onBoarding/onboarding.dart';
import 'package:islami_c13_str/sura_details/sura_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: CacheHelper.getEligibility() == true
          ? HomeScreen.routeName
          : OnboardingScreen.routeName,
      routes: {
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
      },
    );
  }
}
