import 'package:flutter/material.dart';
import 'package:islamic_app/myThemeData.dart';

class AhadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: Image.asset("assets/images/ahadeth_image.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Expanded(child: Divider(thickness: 3,color: MyThemeData.PrimaryColor,)),
            ],
          )
        ],
      ),
    );
  }
}
