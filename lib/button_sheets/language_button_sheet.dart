 import 'package:flutter/material.dart';
 import 'package:islamic_app/myThemeData.dart';

 class LanguageButtonSheet extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.only(top: 35),
       child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text("Select Your Prefer Language",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: MyThemeData.PrimaryColor),),
               ],
             ),
           ),
           SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text("English",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: MyThemeData.blackColor),),
               ],
             ),
           ),
           SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text("Arabic",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: MyThemeData.blackColor)),
               ],
             ),
           ),
         ],
       ),
     );
   }
 }
