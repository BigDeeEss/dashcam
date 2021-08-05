

//  Import flutter packages.
import 'package:flutter/material.dart';


// Import project-specific files.
import 'package:dashcam/external/lib/custom_icons.dart';


class RouteSpec {
  //  Constructor for [routeSpec].
  const RouteSpec({
    required this.title,
    this.automaticallyImplyLeading: false,
    required this.icon,
    required this.route,
  });

  //  [title] of screen appearing on appBar.
  final String title;

  //  Toggles the 'leading' widget associated with basePage(...).
  //  Set 'true' only for development. Note that the 'leading back arrow'
  //  may not be displayed if there is no page available.
  final bool automaticallyImplyLeading;

  //  []
  final Icon icon;

  final String route;
}


RouteSpec settings = RouteSpec(
  title: 'Settings',
  automaticallyImplyLeading: true,
  icon: Icon(CustomIcons.cog_1),
  route: '/settings'
);


RouteSpec home = RouteSpec(
  title: 'Home',
  automaticallyImplyLeading: true,
  icon: Icon(CustomIcons.home),
  route: '/home'
);