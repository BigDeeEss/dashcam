//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/base_page2.dart';
import 'package:dashcam/lib/custom_icons.dart';

// Implement PageRouteBuilder method for managing page/route transitions.
Route _createRoute(ButtonSpec buttonSpec) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        BasePage(
          title: buttonSpec.title,
        ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class ButtonSpec {
  //  Constructor for [routeSpec].
  const ButtonSpec({
    required this.icon,
    required this.onPressed,
    required this.size,
    required this.title,
  });

  //  [icon] is displayed on the FAB associated with [RouteSpec].
  final Icon icon;

  //  [onPressed] defines the action to be taken on activation
  //  of the associated FAB.
  final void Function(BuildContext context) onPressed;

  final double size;

  //  [title] of screen appearing on appBar.
  final String title;
}

ButtonSpec eject = ButtonSpec(
  icon: Icon(CustomIcons.eject),
  onPressed: (context) {
    Navigator.of(context).pushReplacement(_createRoute(eject));
  },
  size: 56,
  title: 'Eject',
);

ButtonSpec home = ButtonSpec(
  icon: Icon(CustomIcons.home),
  onPressed: (context) {
    Navigator.of(context).pushReplacement(_createRoute(home));
  },
  size: 56,
  title: 'Home',
);

ButtonSpec settings = ButtonSpec(
  icon: Icon(CustomIcons.cog_1),
  onPressed: (context) {
    Navigator.of(context).pushReplacement(_createRoute(settings));
  },
  size: 56,
  title: 'Settings',
);
