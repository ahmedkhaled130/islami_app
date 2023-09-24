import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/myThemeData.dart';
import 'package:islamic_app/tabs/hadeth_model.dart';

class AhadethTab extends StatelessWidget {
  List<HadethModel>allAhadeth=[];
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Divider(
                thickness: 3,
                color: MyThemeData.PrimaryColor,
              )),
            ],
          )
        ],
      ),
    );
  }

  void loadHadeth() {
    rootBundle
        .loadString("assets/files/ahadeth.txt")
        .then((ahadeth) {

          List<String>ahadethList=ahadeth.split("#");
         for(int i=0;i<ahadethList.length;i++){
           String hadethOne = ahadethList[i];
           List<String>hadethOneLines = hadethOne.trim().split("\n");
           String title = hadethOneLines[0];
           hadethOneLines.removeAt(0);
           List<String> content = hadethOneLines;
           HadethModel hadethModel=HadethModel(title, content);
           print(hadethModel.title);
           print("$i");
           allAhadeth.add(hadethModel);
         }
            print(ahadethList);

    })
        .catchError((e) {
      print(e.toString());
    });
  }
}
