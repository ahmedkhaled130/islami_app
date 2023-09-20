import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/services.dart';
import 'package:islamic_app/myThemeData.dart';
import 'package:islamic_app/tabs/hadeth_model.dart';

class AhadethTab extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: Image.asset("assets/images/ahadeth_image.png")),
          Divider(
            thickness: 3,
            color: MyThemeData.PrimaryColor,
          ),
          Text("ahadth", style: TextStyle(color: MyThemeData.blackColor)),
          Divider(
            thickness: 3,
            color: MyThemeData.PrimaryColor,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: MyThemeData.PrimaryColor,
                thickness: 1,
                endIndent: 40,
                indent: 40,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, routeName)
                  },
                  child: Text(
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: MyThemeData.blackColor),
                      allAhadeth[index].title,textAlign:TextAlign.center,),
                );
              },
              itemCount: allAhadeth.length,
            ),
          )
        ],
      ),
    );
  }

  void loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        HadethModel hadethModel = HadethModel(title, content);
        print(hadethModel.title);
        print("$i");
        allAhadeth.add(hadethModel);
      }
      print(ahadethList);
    }).catchError((e) {
      print(e.toString());
    });
  }
=======

class AhadethTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }
>>>>>>> 76fc221 (app init)
}
