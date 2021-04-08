
import 'package:flutter/material.dart';
import 'package:my_chatbot/utils/responsive_widget.dart';
import 'small_screen.dart';
import 'large_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ResponsiveWidget(
      largeScreen: LargeScreen(),
      smallScreen: SmallScreen(),
    );
  }
}