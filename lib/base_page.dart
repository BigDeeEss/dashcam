//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/button.dart';
import 'package:dashcam/button_specs.dart';
import 'package:dashcam/app_settings.dart' as appSettings;

/// StatefulWidget implements a basic page layout design.
class BasePage extends StatefulWidget {
  const BasePage({
    required this.route,
    Key? key,
  }) : super(key: key);

  /// [route] is a string representation of a route specified in main.dart.
  final String route;

  @override
  _BasePageState createState() => _BasePageState();
}

//  State class associated with BasePage widget.
class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.route),

        //  Remove 'leading' widget associated with AppBar() class.
        // automaticallyImplyLeading: appSettings.automaticallyImplyLeading,
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
                padding: (appSettings.buttonAlignment.y < 0)
                    ? appSettings.buttonPaddingDown
                    : appSettings.buttonPaddingUp,
                child: Button(
                  buttonSpec: home,
                ),
              ),
              Padding(
                padding: (appSettings.buttonAlignment.y < 0)
                    ? appSettings.buttonPaddingDown
                    : appSettings.buttonPaddingUp,
                child: Button(
                  buttonSpec: settings,
                ),
              ),
              Padding(
                padding: (appSettings.buttonAlignment.y < 0)
                    ? appSettings.buttonPaddingDown
                    : appSettings.buttonPaddingUp,
                child: Button(
                  buttonSpec: eject,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
