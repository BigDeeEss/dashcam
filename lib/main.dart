//  Import flutter packages.
import 'package:flutter/material.dart';

//  Import project-specific files.
import 'package:dashcam/base_page2.dart';

//  App start point.
void main() {
  runApp(const DashCam());
}

class DashCam extends StatelessWidget {
  //  Default const constructor required because there is a const keyword
  //  in 'runApp(const DashCam(...));' above.
  const DashCam({Key? key}) : super(key: key);

  //  Root widget of DashCam project. It defines the first
  //  widget built by runApp(...).
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DashCam',
      home: BasePage(title: 'Home'),
    );
  }
}
