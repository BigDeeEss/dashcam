

// Import flutter packages.
import 'package:flutter/material.dart';
import 'package:dashcam/settings.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    _animation = Tween<Offset>(
      begin: const Offset(-0.5, 0.0),
      end: const Offset(0.5, 0.0),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Stack(
        children: <Widget>[
          Builder(
              builder: (context) => Center(
                  child: SlideTransition(
                    position: _animation,
                    transformHitTests: true,
                    child: RaisedButton(
                      child: Text('Woolha.com'),
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text('Button is pressed'))
                        );
                        Navigator.popAndPushNamed(context, '/settings');
                      },
                    ),
                  )
              )
          ),
        ],
      ),

    );
  }
}
