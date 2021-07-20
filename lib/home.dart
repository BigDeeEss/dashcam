

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
          bottom: 100,
          right: 100,
          height: 50,
          width: 150,
          child: Material(
            color: Colors.green,
            child: IconButton(
              icon: const Icon(CustomIcons.videocam),
              // iconSize: 50,
              onPressed: () {}
            ),
          ),
        ),
      ],
    );
  }
}
