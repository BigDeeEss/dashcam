

//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import './external/lib/custom_icons.dart';


//  StatefulWidget which implements a dynamic button.
class Button extends StatefulWidget {
  const Button(
    //  Define optional parameter.
    this.identifier,

    {Key? key}
  ) : super(key: key);

  //  [identifier] of screen. Needs to be nullable since title is optional.
  final String identifier;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with TickerProviderStateMixin {
  //  Define an animation controller.
  late AnimationController _controller;

  //  Define the type of animation, in this case between two Offset() classes.
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 5300),
      vsync: this,
    )..forward();

    _animation = Tween<Offset>(
      begin: const Offset(1.0, -5.0),
      end: const Offset(1.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Builder(
          builder: (context) => Center(
            child: SlideTransition(
              position: _animation,
              transformHitTests: true,
              child: FloatingActionButton(
                heroTag: 'eject',
                child: Icon(CustomIcons.eject),
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/home');
                },
              ),
              // child: RaisedButton(
              //   child: Text('Woolha.com'),
              //   onPressed: () {
              //     Scaffold.of(context).showSnackBar(
              //         SnackBar(content: Text('Button is pressed'))
              //     );
              //     Navigator.popAndPushNamed(context, '/settings');
              //   },
              // ),
            )
          )
        ),
      ],
    );
  }
}
