

//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/route_specs.dart';


//  StatefulWidget which implements a dynamic Button2.
class Button2 extends StatefulWidget {
  //  Constructor for [Button2].
  const Button2({
    required this.routeSpec,
    required this.shift,

    Key? key,
  }) : super(key: key);

  //  RoutSpec defines all route-specific information, e.g.: icon,
  //  route, page title.
  final RouteSpec routeSpec;
  final double shift;

  @override
  _Button2State createState() => _Button2State();
}

class _Button2State extends State<Button2> with TickerProviderStateMixin {
  //  Define an animation controller.
  late AnimationController _controller;

  //  Define the type of animation, in this case between two Offset() classes.
  late Animation<Offset> _animation;

  void Function()? onPressed(BuildContext context) {
    print('Pressed Button2 onpressed...');
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..forward();

    _animation = Tween<Offset>(
      begin: Offset(3.0, -6.0 - widget.shift),
      end: Offset(3.0, 0.0 - widget.shift),
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
            builder: (context) => Center(
                child: SlideTransition(
                  position: _animation,
                  transformHitTests: true,
                  child: FloatingActionButton(
                    // Use routeSpec.title for heroTag.
                    heroTag: widget.routeSpec.title,
                    child: widget.routeSpec.icon,
                    onPressed: () {
                      widget.routeSpec.onPressed(context);
                    },
                    // onPressed: () {
                    //   //  Get rid of top route  and replace with new.
                    //   Navigator.popAndPushNamed(context, widget.routeSpec.route);
                    // },
                  ),
                )
            )
        ),
      ],
    );
  }
}
