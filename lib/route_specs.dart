

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
  });

  //  [title] of screen appearing on appBar.
  final String title;

  //  Toggles the 'leading' widget associated with basePage(...).
  //  Set 'true' only for development. Note that the 'leading back arrow'
  //  may not be displayed depending on whether there is a page available.
  final bool automaticallyImplyLeading;

  //  []
  final Icon icon;
}

RouteSpec settings = RouteSpec(
  title: 'Settings',
  automaticallyImplyLeading: true,
  icon: Icon(CustomIcons.cog_1),
);
RouteSpec home = RouteSpec(
  title: 'Home',
  automaticallyImplyLeading: true,
  icon: Icon(CustomIcons.home),
);