//  Import flutter packages.
import 'package:flutter/material.dart';

//  Import project-specific files.
import 'package:dashcam/base_page.dart';
import 'package:dashcam/button.dart';
import 'package:dashcam/loader.dart';

//  App start point.
void main() {
  runApp(const DashCam());
}

class DashCam extends StatelessWidget {
  //  Default constructor required because there is a const keyword
  //  in 'runApp(const DashCam(...));' above.
  const DashCam({Key? key}) : super(key: key);

  //  Root widget of DashCam project defining the first widget built
  //  by runApp(...).
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DashCam',
      home: Loader(),
      // home: BasePage(title: 'Home',),
      // home: Navigator.of(context).pushReplacement(createRoute('settings')),
    );
  }
}
