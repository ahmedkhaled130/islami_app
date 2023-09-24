import 'package:flutter/material.dart';
import 'package:islamic_app/myThemeData.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasabeh = [
    "سُبْحَانَ اللَّهِ",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
    "أستغفر الله",
    "لَا إِلَهَ إِلَّا اللَّهُ",
    "الْلَّهُ أَكْبَرُ"
  ];
  int index = 0;
  int counter = 0;
  var rotete=5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Column(
            children: [
              Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Image.asset("assets/images/head_sebha.png"),
                  ),
                  RotationTransition( turns: new AlwaysStoppedAnimation(rotete / 360),
                      child: Image.asset("assets/images/body_sebha.png")),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text("Tasbeha Counter",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: MyThemeData.blackColor)),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              displayCounter();
              rotete+=5;
            },
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffB7935F),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(14, 14),
                            topRight: Radius.elliptical(14, 14),
                            bottomLeft: Radius.elliptical(14, 14),
                            bottomRight: Radius.elliptical(14, 14),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(" $counter ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: MyThemeData.blackColor)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: MyThemeData.PrimaryColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(9),
                        child: Text("${tasabeh[index]}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  displayCounter() {
    if (index == tasabeh.length - 1 && counter == 33) {
      index == 0;
      counter == 0;
      setState(() {});
      return;
    }
    if (counter == 33) {
      counter = 0;
      index++;
    } else {
      counter++;
    }
    setState(() {});
  }
}
