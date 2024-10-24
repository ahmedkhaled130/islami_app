import 'package:flutter/material.dart';
import 'package:flutter_intro/bottom_sheets/language_bottom_sheet.dart';
import 'package:flutter_intro/mythemedata.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

import '../my_provider/my_provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    MyProvider controller=context.read<MyProvider>();
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: MyThemeData.blackColor),
          ).tr(),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(
                "English",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: MyThemeData.blackColor),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Themeing",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: MyThemeData.blackColor),
          ).tr(),
          InkWell(onTap: () {
            showThemingTheBottomSheet();
          },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(
                "Light",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: MyThemeData.blackColor),
              ),
            ),
          )
        ],
      ), 
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4), topRight: Radius.circular(3))),
      builder: (context) =>LanguageBottomSheet()
    );
  }
  showThemingTheBottomSheet() {
    showModalBottomSheet(context: context,   shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(16), topRight: Radius.circular(16))),
    builder: (context) => Container(
    height: MediaQuery.of(context).size.height*.2,
    ),);

  }
}
