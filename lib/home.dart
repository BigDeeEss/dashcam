

// Import flutter packages.
import 'package:flutter/material.dart';


// Import project-specific files.
import './external/lib/custom_icons.dart';


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
          child: Icon(
            // Icons.video,
            Icons.favorite,
            color: Colors.pink,
          ),
        ),
        Positioned(
          bottom: 150,
          right: 150,
          height: 150,
          width: 150,
          child: Icon(
            // Icons.video,
            CustomIcons.cog_1,
            color: Colors.pink,
          ),
        ),
      ],
    );
  }
}
