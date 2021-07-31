

//  Import flutter packages.
import 'package:flutter/material.dart';


//  StatefulWidget which implements a basic page design layout.
class BasePage extends StatefulWidget {

  //  Constructor for [BasePage].
  const BasePage({
    //  Define optional parameter.
    this.title,

    Key? key,
  }) : super(key: key);

  //  [title] of screen. Needs to be nullable since title is optional.
  final String? title;

  @override
  _BasePageState createState() => _BasePageState();
}

//  State class associated with BasePage widget.
class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  Display title or '' in the case where title is null.
        title: Text(widget.title ?? ''),

        //  Remove the 'leading' widget associated with AppBar() class.
        automaticallyImplyLeading: false,
      ),

      //  Use Builder() widget because it is not possible to get the appBar
      //  height from the current BuildContext when it doesn't yet include the
      //  Scaffold() class being returned by this widget.
      bottomNavigationBar: Builder(
        builder: (BuildContext context) {
          return BottomAppBar(
            color: Colors.blue,
            child: Row(
              children: <Widget>[
                SizedBox(
                  //  Set height of the BottomAppBar() class variable using
                  //  SizedBox(). Get [height] from [context] by first
                  //  extracting the immediate Scaffold(), and then getting
                  //  the value for appBarMaxHeight.
                  height: Scaffold.of(context).appBarMaxHeight,
                ),
              ],
            ),
          );
        },
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