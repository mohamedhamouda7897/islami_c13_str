import 'package:flutter/material.dart';
import 'package:islami_c13_str/my_theme_data.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xff856B3F)
                ),
                child: Image.asset('assets/images/prayTimes.png' , fit: BoxFit.cover,),
              ),
              const SizedBox(height: 16,),
               Row(
                children: [
                  Text('   Azkar' , style:
                        MyThemeData.lightTheme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                     // fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/eveningAzkar.png' , fit: BoxFit.cover,),
                  Image.asset('assets/images/morningAzkar.png' , fit: BoxFit.cover,),
                ]
              )
          ],
                ),
        ),
      ),
    );
  }
}