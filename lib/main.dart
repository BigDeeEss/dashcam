

//  Import flutter packages.
import 'package:flutter/material.dart';


//  Import project-specific files.
import 'package:dashcam/base_page.dart';
import 'package:dashcam/route_specs.dart';


//  App start point.
void main() {
  runApp(const DashCam());
}


class DashCam extends StatelessWidget {
  //  Default constructor required because there is a const keyword
  //  in 'runApp(const DashCam(...));' above.
  const DashCam({Key? key}) : super(key: key);

  //  Root widget of DashCam project. It defines the first
  //  widget built by runApp(...).
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DashCam',

      //  [initialRoute] is executed when building the initial widget.
      //  [initialRoute] is optional. It overrules the '/' route below.
      initialRoute: '/',

      //  Define all routes in DashCam app. DashCam uses a simple screen
      //  layout with the layout of each page defined by [BasePage].
      routes: {
        //  Specify initial route (used at time of initial widget build).
        //  Can be overridden by initialRoute.
        '/': (context) => BasePage(routeSpec: home),

        //  Specify route => Home...
        '/home': (context) =>  BasePage(routeSpec: home),

        //  Specify route to => Settings...
        '/settings': (context) => BasePage(routeSpec: settings),
      },
    );
  }
}

