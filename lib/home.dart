

// Import flutter packages.
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 50,
          right: 50,
          height: 50,
          width: 50,
          child: FlutterLogo()
        ),
      ],
    );
  }
}
