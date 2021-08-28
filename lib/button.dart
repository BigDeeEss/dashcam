//  Import flutter packages.
import 'package:flutter/material.dart';

//  Import project-specific files.
import 'package:dashcam/base_page.dart';
import 'package:dashcam/lib/custom_icons.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print(screenSize);

    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(_createRoute('settings'));
      },
      child: Icon(CustomIcons.cog_1),
    );
  }
}


// Implement PageRouteBuilder method for managing page/route transitions.
Route _createRoute(String title) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        BasePage(
          animation: animation,
          title: title,
        ),
    transitionDuration: const Duration(seconds: 1),
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