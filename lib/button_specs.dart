//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/lib/custom_icons.dart';

class ButtonSpec {
  //  Constructor for [routeSpec].
  const ButtonSpec({
    required this.title,
    required this.icon,
    required this.route,
    required this.onPressed,
  });

  //  [icon] is displayed on the FAB associated with [RouteSpec].
  final Icon icon;

  //  [onPressed] efines the action to be taken on activation
  //  of the associated FAB.
  final void Function(BuildContext context) onPressed;

  //  [route] defines which page is displayed when FAB associated
  //  with RouteSpec is activated.
  final String route;

  //  [title] of screen appearing on appBar.
  final String title;
}

ButtonSpec eject = ButtonSpec(
  title: 'Eject',
  icon: Icon(CustomIcons.eject),
  route: '/home',
  onPressed: (context) {
    Navigator.pop(context);
  },
);

ButtonSpec home = ButtonSpec(
  title: 'Home',
  icon: Icon(CustomIcons.home),
  route: '/home',
  onPressed: (context) {
    Navigator.popAndPushNamed(context, '/home');
  },
);

ButtonSpec settings = ButtonSpec(
  title: 'Settings',
  icon: Icon(CustomIcons.cog_1),
  route: '/settings',
  onPressed: (context) {
    Navigator.popAndPushNamed(context, '/settings');
  },
);
