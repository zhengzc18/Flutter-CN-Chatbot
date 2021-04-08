import 'package:flutter/material.dart';
import 'package:my_chatbot/utils/strings.dart';
import 'package:my_chatbot/utils/myColors.dart';
import 'package:my_chatbot/widgets/emailBox.dart';
import 'package:my_chatbot/utils/widgets_lib.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children:<Widget>[addBackground(), addWelcomeText(context)],
        ),
        );
  }

  // Add Backaground Image
  Widget addBackground() {
    return FractionallySizedBox(
      alignment: Alignment.centerRight, // to keep images aligned to right
      widthFactor: .6, //covers about 60% of the screen width
      child: Image.asset(
        Strings.backgroundImage,
        scale: .85,
      ),
      );
  }


 // Adds welcome text
 Widget addWelcomeText(BuildContext context) {
   return Column(children: <Widget>[
     FractionallySizedBox(alignment: Alignment.centerLeft,
     widthFactor: .6,
     child: Padding(
       padding: EdgeInsets.only(left:  48),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text(
             Strings.hello,
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 60,
               color: MyColors.blue4,
               ),
             ),
             RichText(
               text: TextSpan(
                 text: Strings.welcomeTo,
                 style: TextStyle(fontSize: 60, color: MyColors.blue4),
                 children: [
                   TextSpan(
                     text: Strings.clc,
                     style: TextStyle(
                       fontSize: 60,
                       fontWeight: FontWeight.bold,
                       color: Colors.black54))
                 ]),
             ),
             Padding(
               padding: EdgeInsets.only(left: 12.0, top: 20),
               child: Text(Strings.subscribeText),
               ),
               SizedBox(
                 height: 40,
                 ),
                 EmailBox(),         
         ],
         ),
          ),
     ),
     Padding(
       padding: EdgeInsets.all(8.0),
       child: factBot(context),
       ),
   ],
   );
 }
}