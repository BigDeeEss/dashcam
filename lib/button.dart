//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/button_specs.dart';

//  StatefulWidget which implements a dynamic Button.
class Button extends StatefulWidget {
  //  Constructor for [Button].
  const Button({
    required this.buttonSpec,
    required this.screenSize,
    Key? key,
  }) : super(key: key);

  //  RoutSpec defines all route-specific information, e.g.: icon,
  //  route, page title.
  final ButtonSpec buttonSpec;

  final Size screenSize;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with SingleTickerProviderStateMixin {
  //  Define the type of animation, in this case between two Offset() classes.
  late Animation<Offset> _animation ;

  //  Define an animation controller.
  late AnimationController _controller;

  late double? _screenWidth;

  @override
  void initState() {
    super.initState();

    print('test1');
    print(widget.screenSize);
    print('test2');

    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
      debugLabel: 'Button',
    )..forward();

    _animation = Tween<Offset>(
      begin: Offset(-widget.screenSize.width / widget.buttonSpec.size, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    ));
  }

  @override
  void dispose() {
    //  Need to dispose of controlled before disposing widget.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: FloatingActionButton(
        // Use buttonSpec.title for heroTag.
        heroTag: widget.buttonSpec.title,
        child: widget.buttonSpec.icon,
        onPressed: () => widget.buttonSpec.onPressed(context),
      ),
    );
  }
}
