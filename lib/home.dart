

// Import flutter packages.
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// Import project-specific files.
import 'package:dashcam/external/lib/custom_icons.dart';
import 'package:dashcam/home.dart';
import 'package:dashcam/settings.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FloatingActionButton(
                      heroTag: 'settings1',
                      child: Icon(CustomIcons.cog_1),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/settings');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child:
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FloatingActionButton(
                        heroTag: 'eject',
                        child: Icon(CustomIcons.eject),
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/home');
                        },
                      ),
                    ),
                    // FloatingActionButton(
                    //   child: Icon(CustomIcons.eject),
                    //   onPressed: () {},
                    // ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FloatingActionButton(
                      heroTag: 'photos',
                      child: Icon(CustomIcons.photo_video),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/settings');
                      },
                    ),
                  ),
                ]
              ),
            ),
            // Positioned(
            //   top: 0.0,
            //   right: 0.0,
            //   child: FloatingActionButton(
            //     child: Icon(CustomIcons.satellite_dish),
            //     onPressed: () {},
            //   ),
            // ),
            Align(
              alignment: Alignment.topLeft,
              child: SlideTransitionFAB(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'settings3425',
          child: Icon(CustomIcons.cog_1),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
    );
  }
}


// class AnimatedPositionFAB extends StatefulWidget {
//   const AnimatedPositionFAB({Key? key}) : super(key: key);
//
//   @override
//   _AnimatedPositionFABState createState() => _AnimatedPositionFABState();
// }
//
// class _AnimatedPositionFABState extends State<AnimatedPositionFAB> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }



/// This is the stateful widget that the main application instantiates.
class SlideTransitionFAB extends StatefulWidget {
  const SlideTransitionFAB({Key? key}) : super(key: key);

  @override
  State<SlideTransitionFAB> createState() => _SlideTransitionFABState();
}

/// This is the private State class that goes with SlideTransitionFAB.
class _SlideTransitionFABState extends State<SlideTransitionFAB>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(0.0,0.0),
    end: const Offset(0.0,4.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: EdgeInsets.all(8.0),
          child: FloatingActionButton(
            heroTag: 'settings',
            child: Icon(CustomIcons.cog_1),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
      ),
    );
  }
}
