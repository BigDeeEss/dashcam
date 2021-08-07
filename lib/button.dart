

//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/route_specs.dart';


//  StatefulWidget which implements a dynamic Button.
class Button extends StatefulWidget {
  //  Constructor for [Button].
  const Button({
    required this.routeSpec,

    Key? key,
  }) : super(key: key);

  //  RoutSpec defines all route-specific information, e.g.: icon,
  //  route, page title.
  final RouteSpec routeSpec;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with TickerProviderStateMixin {
  //  Define an animation controller.
  late AnimationController _controller;

  //  Define the type of animation, in this case between two Offset() classes.
  late Animation<Offset> _animation;

  void Function()? onPressed(BuildContext context) {
    print('Pressed Button onpressed...');
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    )..forward();

    _animation = Tween<Offset>(
      begin: Offset(0.0, -1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
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
          builder: (context) => SlideTransition(
            position: _animation,
            transformHitTests: true,
            child: FloatingActionButton(
              // Use routeSpec.title for heroTag.
              heroTag: widget.routeSpec.title,
              child: widget.routeSpec.icon,
              onPressed: () => widget.routeSpec.onPressed(context)
            ),
          )
        ),
      ],
    );
  }
}
