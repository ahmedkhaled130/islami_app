import 'package:flutter/material.dart';
import 'package:islamic_app/button_sheets/language_button_sheet.dart';
import 'package:islamic_app/myThemeData.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: TextStyle(color: MyThemeData.blackColor),
          ),
          InkWell(onTap: () {
            showLanguageButtonSheet();
          },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 17),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyThemeData.PrimaryColor)),
              child:
                  Text("English", style: TextStyle(color: MyThemeData.blackColor)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Theming",
            style: TextStyle(color: MyThemeData.blackColor),
          ),
          InkWell(onTap: () {
            showThemingButtonSheet();
          },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 17),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyThemeData.PrimaryColor)),
              child: Text("Ligth", style: TextStyle(color: MyThemeData.blackColor)),
            ),
          )
        ],
      ),
    );
  }

  showLanguageButtonSheet(){

    showModalBottomSheet(context: context,

      isScrollControlled: true,
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
      ),
      builder: (context) => LanguageButtonSheet(),
    );
  }
  showThemingButtonSheet(){

    showModalBottomSheet(context: context,
      isScrollControlled: true,
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
      ),
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height*0.3,
    ),);
  }
}
