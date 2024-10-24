import 'package:flutter/material.dart';
import 'package:flutter_intro/mythemedata.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0;
  int pressCount = 0;
  int tasbehCounter = 0;
  final List<String> phrases = [
    'سُبْحَانَ الله',
    'الْحَمْدُ لِلَّه',
    'اللَّهُ أَكْبَر',
    'لَا إِلَهَ إِلَّا اللَّه'
  ];

  @override
  Widget build(BuildContext context) {
    String displayText = phrases[(pressCount ~/ 33) % phrases.length];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Image(
                    image: AssetImage("assets/images/head_sebha_logo.png"))),
            Center(
                child: AnimatedRotation(
              turns: turns,
              duration: Duration(microseconds: 10), // Increased duration
              child:
                  Image(image: AssetImage("assets/images/body_sebha_logo.png")),
            )),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "$displayText",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: MyThemeData.primaryColor,
                      ),
                ),
              ),
            ),
            Center(
              child: Text(
                "$tasbehCounter",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: MyThemeData.primaryColor,
                    ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(MyThemeData.primaryColor),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)))),
              onPressed: () {
                setState(() {
                  turns += 15 / 360;
                  if (tasbehCounter == 32) {
                    tasbehCounter = -1;
                  }
                  pressCount++;
                  tasbehCounter++;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "أضغط للتسبيح",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: MyThemeData.blackColor,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
