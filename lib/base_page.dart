//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/button.dart';
import 'package:dashcam/route_specs.dart';
import 'package:dashcam/app_settings.dart' as appSettings;

/// StatefulWidget implements a basic page layout design.
class BasePage extends StatefulWidget {
  const BasePage({
    required this.routeSpec,
    Key? key,
  }) : super(key: key);

  /// [routeSpec] contains all route-specific information.
  /// E.g.: FAB icon, FAB activation action, page title.
  final RouteSpec routeSpec;

  @override
  _BasePageState createState() => _BasePageState();
}

//  State class associated with BasePage widget.
class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.routeSpec.title),

        //  Remove 'leading' widget associated with AppBar() class.
        automaticallyImplyLeading: appSettings.automaticallyImplyLeading,
      ),

      //  Use Builder(...) widget because it is not possible to get the appBar
      //  height from the current BuildContext when it doesn't yet include the
      //  Scaffold(...) class being returned by this widget.
      bottomNavigationBar: Builder(
        builder: (BuildContext context) {
          return BottomAppBar(
            color: Colors.blue,
            child: Row(
              children: <Widget>[
                SizedBox(
                  //  Set height of the BottomAppBar(...) class variable using
                  //  SizedBox(...). Get height from [context] by first
                  //  extracting the immediate Scaffold(...), and then getting
                  //  the value for appBarMaxHeight.
                  height: (Scaffold.of(context).appBarMaxHeight ?? 0.0) *
                      appSettings.appBarHeightScaleFactor,
                ),
              ],
            ),
          );
        },
      ),

      //  Use a Container-Align-Column combination to locate the button list.
      body: Container(
        child: Align(
          alignment: appSettings.buttonAlignment,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: (appSettings.buttonAlignment.y < 0)
                ? VerticalDirection.down
                : VerticalDirection.up,
            children: <Widget>[
              Padding(
                // padding: EdgeInsets.all(16.0),
                padding: (appSettings.buttonAlignment.y < 0)
                    ? appSettings.downButtonPadding
                    : appSettings.upButtonPadding,
                child: Button(
                  routeSpec: home,
                ),
              ),
              Padding(
                // padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                padding: (appSettings.buttonAlignment.y < 0)
                    ? appSettings.downButtonPadding
                    : appSettings.upButtonPadding,
                child: Button(
                  routeSpec: settings,
                ),
              ),
              Padding(
                // padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                padding: (appSettings.buttonAlignment.y < 0)
                    ? appSettings.downButtonPadding
                    : appSettings.upButtonPadding,
                // padding: EdgeInsets.all(16.0),
                child: Button(
                  routeSpec: eject,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
