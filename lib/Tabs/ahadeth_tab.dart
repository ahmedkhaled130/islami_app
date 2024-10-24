import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_intro/ahadeth_details.dart';
import 'package:flutter_intro/hadeth_model.dart';
import 'package:flutter_intro/mythemedata.dart';

class AhadethTab extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          Divider(
            thickness: 3,
            color: MyThemeData.primaryColor,
          ),
          Text("Ahadeth",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: MyThemeData.blackColor)).tr(),
          Divider(
            thickness: 3,
            color: MyThemeData.primaryColor,
          ),
          ListView.separated(
            separatorBuilder: (context, index) {
             return Divider(
                thickness: 1,
                endIndent: 40,
                indent: 40,
                color: MyThemeData.primaryColor,
              );
            },
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Center(
                child: InkWell(onTap: () {
                  Navigator.pushNamed(context, AhadethDeteils.routeName,arguments: allAhadeth[index]);

                },
                  child: Text(
                    allAhadeth[index].title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: MyThemeData.blackColor),
                  ),
                ),
              );
            },
            itemCount: allAhadeth.length,
          )
        ],
      ),
    );
  }

  void loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");

      for (int i = 0; i < ahadethList.length; i++) {
        String HadethOne = ahadethList[i];
        List<String> hadethOneLines = HadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> contant = hadethOneLines;
        HadethModel hadethModel = HadethModel(title, contant);

        allAhadeth.add(hadethModel);
      }
    });
  }
}
