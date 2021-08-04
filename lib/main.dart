

//  Import flutter packages.
import 'package:flutter/material.dart';


//  Import project-specific files.
import './home.dart';
import './settings.dart';
import './newhome.dart';
import './base_page.dart';
import './route_specs.dart';


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

      //  Define an initialRoute which is executed on initial widget build
      //  and can be used to overrule the '/' route below.
      initialRoute: '/home',

      //  Define all routes in DashCam app; note this is a map/dictionary.
      //  DashCam screen layout is simple with each route having the same
      //  base page layout.
      routes: {
        //  Specify initial route (used at time of initial widget build).
        //  Can be overridden by initialRoute.
        '/': (context) => BasePage(routeSpec: home),

        //  Specify route => Home() route...
        '/home': (context) => const Home(),

        //  Specify route => Home() route...
        '/newhome': (context) => const NewHome(),

        // // Specify route => Files() route...
        // '/files': (context) => Files(),

        //  Specify route to => Settings() route...
        '/settings': (context) => BasePage(routeSpec: settings),
      },
    );
  }
}

