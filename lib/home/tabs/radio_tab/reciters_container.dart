import 'package:flutter/material.dart';
import 'package:islami_c13_str/my_theme_data.dart';

class RecitersContainer extends StatelessWidget {
  const RecitersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                height: 8,
              ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              height: size.height * 0.15,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/radioCard.png') ,
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Malik shaibat Alhamed',
                    style:
                        MyThemeData.lightTheme.textTheme.titleMedium!.copyWith(color: MyThemeData.blackColor),
                  ),
                  Image.asset(
                    'assets/images/playRadio.png',
                  ),
                ],
              ),
            );
          }),
    );
  }
}
