import 'package:flutter/material.dart';
import 'package:my_chatbot/utils/myColors.dart';
import 'package:my_chatbot/utils/strings.dart';
import 'package:my_chatbot/widgets/subscribe_button.dart';
import 'package:my_chatbot/utils/responsive_widget.dart';

class EmailBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 4.0,
          right: ResponsiveWidget.isSmallScreen(context) ? 4 : 74,
          top: 10,
          bottom: 40),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: MyColors.white1,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 8), blurRadius: 8)
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: Strings.email_hint),
                ),
              ),
              Expanded(
                  flex: 2,
                  child:
                  //Example of applying local themes to a certain widget in app
                      Theme(
                    data: ThemeData(
                      primaryColor: MyColors.orange1,
                      secondaryHeaderColor: MyColors.orange2,
                      accentColor: MyColors.orange3,
                    ),
                    child: SubscribeButton(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
