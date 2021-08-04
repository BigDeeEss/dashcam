

class RouteSpec {
  //  Constructor for [routeSpec].
  const RouteSpec({
    this.title = '',
  });

  //  [title] of screen. Needs to be nullable since title is optional.
  final String title;
}

RouteSpec settings = RouteSpec(title: 'Settings');
RouteSpec home = RouteSpec(title: 'Home');