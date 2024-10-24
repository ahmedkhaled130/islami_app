import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intro/Tabs/ahadeth_tab.dart';
import 'package:flutter_intro/Tabs/quran_tab.dart';
import 'package:flutter_intro/Tabs/radio_tab.dart';
import 'package:flutter_intro/Tabs/sebha_tab.dart';
import 'package:flutter_intro/Tabs/settings_tab.dart';
import 'package:flutter_intro/mythemedata.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.contain,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(
              child:
                  Text("Islami", style: Theme.of(context).textTheme.bodyLarge).tr(),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                 setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/quran.png")),
                    label: "Quran".tr(),
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: "Sebha".tr(),
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: "Ahadeth".tr(),
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings".tr(),
                    backgroundColor: MyThemeData.primaryColor),
              ]),
        body: tabs[index],),
      ],
    );
  }
  List<Widget>tabs=[QuarnTab(),SebhaTab(),AhadethTab(),SettingsTab(),];
}
