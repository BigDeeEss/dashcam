

//  Import flutter packages.
import 'package:flutter/material.dart';


// Import project-specific files.
import 'package:dashcam/lib/custom_icons.dart';


class RouteSpec {
  //  Constructor for [routeSpec].
  const RouteSpec({
    required this.title,
    this.automaticallyImplyLeading: false,
    required this.icon,
    required this.route,
    required this.onPressed,
  });

  //  [title] of screen appearing on appBar.
  final String title;

  //  Toggles the 'leading' widget associated with basePage(...).
  //  Set 'true' only for development. Note that the 'leading back arrow'
  //  may not be displayed if there is no page available.
  final bool automaticallyImplyLeading;

  //  [icon] is displayed on the FAB associated with [RouteSpec].
  final Icon icon;

  //  [route] defines which pageis displayed when FAB associated
  //  with RouteSpec is activated.
  final String route;

  final void Function(BuildContext context) onPressed;

  // void Function()? onPressed(BuildContext context) {
  //   print('Pressed routeSpec onpressed...');
  // }

  // void Function()? onPressed() {
  //   print('Pressed Button2!');
  //   switch(this.title) {
  //     case 'Home':
  //       Navigator.popAndPushNamed(context, '/home');
  //       break;
  //     case 'Settings':
  //       Navigator.popAndPushNamed(context, '/settings');
  //       break;
  //     case 'Eject':
  //       Navigator.pop(context);
  //       break;
  //   }
  // }
}


RouteSpec settings = RouteSpec(
  title: 'Settings',
  automaticallyImplyLeading: true,
  icon: Icon(CustomIcons.cog_1),
  route: '/settings',
  onPressed: (context) {
    Navigator.popAndPushNamed(context, '/settings');
  },
);


RouteSpec home = RouteSpec(
  title: 'Home',
  automaticallyImplyLeading: true,
  icon: Icon(CustomIcons.home),
  route: '/home',
  onPressed: (context) {
    Navigator.popAndPushNamed(context, '/home');
  },
);


RouteSpec eject = RouteSpec(
  title: 'Eject',
  automaticallyImplyLeading: true,
  icon: Icon(CustomIcons.eject),
  route: '/home',
  onPressed: (context) {
    Navigator.pop(context);
  },
);