

//  Import flutter packages.
import 'package:flutter/material.dart';


// Import project-specific files.
import 'package:dashcam/button.dart';
import 'package:dashcam/button2.dart';
import 'package:dashcam/route_specs.dart';


//  StatefulWidget implementing a basic page layout design.
class BasePage extends StatefulWidget {
  //  Constructor for [BasePage].
  const BasePage({
    required this.routeSpec,

    Key? key,
  }) : super(key: key);

  //  RoutSpec defines all route-specific information.
  final RouteSpec routeSpec;

  @override
  _BasePageState createState() => _BasePageState();
}

//  State class associated with BasePage widget.
class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.routeSpec.title),

        //  Remove 'leading' widget associated with AppBar() class.
        automaticallyImplyLeading: widget.routeSpec.automaticallyImplyLeading,
      ),

      //  Use Builder(...) widget because it is not possible to get the appBar
      //  height from the current BuildContext when it doesn't yet include the
      //  Scaffold(...) class being returned by this widget.
      bottomNavigationBar: Builder(
        builder: (BuildContext context) {
          return BottomAppBar(
            color: Colors.blue,
            child: Row(
              children: <Widget>[
                SizedBox(
                  //  Set height of the BottomAppBar(...) class variable using
                  //  SizedBox(...). Get height from [context] by first
                  //  extracting the immediate Scaffold(...), and then getting
                  //  the value for appBarMaxHeight.
                  height: Scaffold.of(context).appBarMaxHeight,
                ),
              ],
            ),
          );
        },
      ),

      body: Stack(
        children: [
          Button2(
            routeSpec: home,
            shift: 0.0,
          ),
          Button2(
            routeSpec: settings,
            shift: 2.0,
          ),
          Button2(
            routeSpec: eject,
            shift: 4.0,
          ),
        ]
      ),
    );
  }
}


class Point {
  double x;
  double y;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point(this.x, this.y);
}