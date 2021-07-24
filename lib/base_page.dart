

//  Import flutter packages.
import 'package:flutter/material.dart';


//  Import project-specific files.


class BasePage extends StatefulWidget {
  BasePage({
    this.title,
    Key? key,
  }) : super(key: key) {
    this.title = this.title ?? 'Test fix';
  }

  String? title;

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    print(widget.title ?? 'Test');
    return Container();
  }
}


class Point {
  double x;
  double y;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point(this.x, this.y);
}