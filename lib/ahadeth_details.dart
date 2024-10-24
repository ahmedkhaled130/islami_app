import 'package:flutter/material.dart';
import 'package:flutter_intro/hadeth_model.dart';

import 'mythemedata.dart';

class AhadethDeteils extends StatelessWidget {
static const String routeName="Ahadethtab";
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
      appBar: AppBar(
      title: Text(
      args.title,
      style: Theme.of(context).textTheme.bodyLarge,
    ),
    ),
      body: Card(
        color: Colors.white,
        elevation: 12,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(color: MyThemeData.primaryColor)),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            indent: 40,
            endIndent: 40,
            thickness: 3,
            color: MyThemeData.primaryColor,
          ),
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                textAlign: TextAlign.center,
                "${args.contant[index]}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            );
          },
          itemCount: args.contant.length,
        ),
      ),)
    );
  }
}
