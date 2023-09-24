import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/myThemeData.dart';
import 'package:islamic_app/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModal;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/background.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        body: Card( elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(
              color: MyThemeData.PrimaryColor,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                indent: 40,endIndent: 40,thickness: 1,color: MyThemeData.PrimaryColor,
              ),
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    verses[index],textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: MyThemeData.blackColor),
                  ),
                );
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ),
    );
  }

  void loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    print(lines);
    verses = lines;
    setState(() {});
  }
}
