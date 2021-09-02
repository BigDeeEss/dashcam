//  Import flutter packages.
import 'package:flutter/material.dart';

//  Import project-specific files.
import 'package:dashcam/base_page.dart';
import 'package:dashcam/lib/custom_icons.dart';

class Button extends StatelessWidget {
  const Button({
    this.animation,
    Key? key,
  }) : super(key: key);

  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    if (this.animation == null) {
      print('null');
      return FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).pop();
          Navigator.of(context).pushReplacement(createRoute('settings'));
        },
        child: Icon(CustomIcons.cog_1),
        backgroundColor: Colors.yellow,
      );
    } else {
      print('not null');
      // return Container();
      return SlidingButton(
        animation: this.animation!,
        // onPressed: () {
        //   Navigator.of(context).pushReplacement(createRoute('settings'));
        // },
        // child: Icon(CustomIcons.cog_1),
      );
    }
  }
}

class SlidingButton extends StatelessWidget {
  const SlidingButton({
    required this.animation,
    Key? key,
  }) : super(key: key);

  static const double initialOffsetX = -100;
  static const double intervalStart = 0.5;
  static const double intervalEnd = 1.0;

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: this.animation,
      builder: (context, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(initialOffsetX, 0),
            end: Offset(0, 0),
          ).animate(
            CurvedAnimation(
              curve: Interval(
                intervalStart,
                intervalEnd,
                curve: Curves.easeOutCubic,
              ),
              parent: this.animation,
            ),
          ),
          child: child,
        );
      },
      child: Container(
        color: Colors.red[50],
        child: SizedBox(
          height: 100,
          width: 100,
          child: Button(),
        ),
      ),
    );
  }
}

// Implement PageRouteBuilder method for managing page/route transitions.
Route createRoute(String title) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        BasePage(
          animation: animation,
          title: title,
        ),
    transitionDuration: const Duration(seconds: 2),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(
        begin: begin,
        end: end,
      ).chain(CurveTween(
        curve: Interval(
          0,
          0.5,
          curve: curve,
        ),
      ));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class test extends Route {}