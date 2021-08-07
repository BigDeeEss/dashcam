//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/lib/custom_icons.dart';

class RouteSpec {
  //  Constructor for [routeSpec].
  const RouteSpec({
    required this.title,
    required this.icon,
    required this.route,
    required this.onPressed,
  });

  //  [title] of screen appearing on appBar.
  final String title;

  //  [icon] is displayed on the FAB associated with [RouteSpec].
  final Icon icon;

  //  [route] defines which page is displayed when FAB associated
  //  with RouteSpec is activated.
  final String route;

  final void Function(BuildContext context) onPressed;
}

RouteSpec settings = RouteSpec(
  title: 'Settings',
  icon: Icon(CustomIcons.cog_1),
  route: '/settings',
  onPressed: (context) {
    Navigator.popAndPushNamed(context, '/settings');
  },
);

RouteSpec home = RouteSpec(
  title: 'Home',
  icon: Icon(CustomIcons.home),
  route: '/home',
  onPressed: (context) {
    Navigator.popAndPushNamed(context, '/home');
  },
);

RouteSpec eject = RouteSpec(
  title: 'Eject',
  icon: Icon(CustomIcons.eject),
  route: '/home',
  onPressed: (context) {
    Navigator.pop(context);
  },
);
