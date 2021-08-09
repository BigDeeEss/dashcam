//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/lib/custom_icons.dart';

class ButtonSpec {
  //  Constructor for [routeSpec].
  const ButtonSpec({
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  //  [icon] is displayed on the FAB associated with [RouteSpec].
  final Icon icon;

  //  [onPressed] efines the action to be taken on activation
  //  of the associated FAB.
  final void Function(BuildContext context) onPressed;

  //  [title] of screen appearing on appBar.
  final String title;
}

ButtonSpec eject = ButtonSpec(
  title: 'Eject',
  icon: Icon(CustomIcons.eject),
  onPressed: (context) {
    Navigator.pop(context);
  },
);

ButtonSpec home = ButtonSpec(
  title: 'Home',
  icon: Icon(CustomIcons.home),
  onPressed: (context) {
    Navigator.popAndPushNamed(context, '/');
  },
);

ButtonSpec settings = ButtonSpec(
  title: 'Settings',
  icon: Icon(CustomIcons.cog_1),
  onPressed: (context) {
    Navigator.popAndPushNamed(context, '/settings');
  },
);
