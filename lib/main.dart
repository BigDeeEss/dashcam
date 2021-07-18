

// Import flutter packages.
import 'package:flutter/material.dart';


// Import project-specific files.
import './home.dart';


// App start point.
void main() {
  runApp(const DashCam());
}


class DashCam extends StatelessWidget {
  // Default constructor required because there is a const keyword
  // in 'runApp(const DashCam());' above.
  const DashCam({Key? key}) : super(key: key);

  // Root widget of DashCam project.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DashCam',

      // Define an initialRoute that is executed on initial widget build.
      initialRoute: '/',

      // Define all routes in DashCam app; note this is a map/dictionary.
      routes: {
        // Specify initial route (used at time of initial widget build).
        // Can be overridden by initialRoute.
        '/': (context) => Home(),

        // // Specify route => Home() route...
        // '/home': (context) => Home(),
        //
        // // Specify route => Files() route...
        // '/files': (context) => Files(),
        //
        // // Specify route => Settings() route...
        // '/settings': (context) => Settings(),
      },
    );
  }
}

