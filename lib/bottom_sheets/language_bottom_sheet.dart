import 'package:flutter/material.dart';
import 'package:flutter_intro/my_provider/my_provider.dart';
import 'package:flutter_intro/mythemedata.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en",context);
            },
            child: Row(children: [
              Text("English",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: MyThemeData.primaryColor),),
              Spacer(),
              provider.languageCode=="en"? Icon(Icons.done,color: MyThemeData.primaryColor,):SizedBox.shrink()
            ],),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar",context);

            },
            child: Row(children: [
              Text("Arabic",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: MyThemeData.blackColor),),
              Spacer(),
              provider.languageCode=="en"?SizedBox.shrink() :Icon(Icons.done,color: Colors.black,)
            ],),
          ),
        ],
      ),
    );
  }
}