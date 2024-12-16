import 'package:flutter/material.dart';
import 'package:islami_c13_str/my_theme_data.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0;
  int num = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            // Image.asset('assets/images/header2.png'),
            SizedBox(
              height: size.height * 0.016,
            ),
            Text(
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
              style: MyThemeData.lightTheme.textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.12,
                ),
                Image.asset('assets/images/sebhaHeader.png'),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                AnimatedRotation(
                  turns: turns,
                  duration: const Duration(seconds: 1),
                  child: Image.asset(
                    'assets/images/sebhaBody.png',
                  ),
                ),
                Positioned(
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    overlayColor:
                        const WidgetStatePropertyAll(Colors.transparent),
                    onTap: () {
                      setState(() => turns += 1 / 30);
                      num++;
                      if (num > 100) {
                        num = 0;
                      }
                    },
                    child: Container(
                      decoration: const ShapeDecoration(shape: CircleBorder()),
                      padding: const EdgeInsets.all(80),
                      child: Column(
                        children: [
                          Text(
                            changer(),
                            style: num == 100
                                ? MyThemeData.lightTheme.textTheme.bodySmall!
                                    .copyWith(color: Colors.white)
                                : MyThemeData.lightTheme.textTheme.bodyMedium!
                                    .copyWith(
                                    color: Colors.white,
                                    fontSize: 36,
                                  ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            '$num',
                            style: MyThemeData.lightTheme.textTheme.bodyMedium!
                                .copyWith(
                              color: Colors.white,
                              fontSize: 36,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  String changer() {
    if (num > 33 && num <= 66) {
      return 'الحمد الله';
    } else if (num > 66 && num <= 99) {
      return 'الله أكبر';
    } else if (num == 100) {
      return 'لا إله إلا الله وحده لا شريك له له الملك\n وله الحمد وهو على كل شيء قدير';
    }
    return 'سبحان الله';
  }
}
