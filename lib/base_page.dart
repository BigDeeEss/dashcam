//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/app_settings.dart' as appSettings;
import 'package:dashcam/button.dart';

/// [BasePage] implements a basic page layout design.
class BasePage extends StatelessWidget {
  const BasePage({
    required this.title,
    Key? key,
  }) : super(key: key);

  /// [title] is the page title displayed on the appBar of the
  /// [BasePage] widget.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title)
      ),

      //  Use Builder(...) widget because it is not possible to get the appBar
      //  height from the current BuildContext when it doesn't yet include the
      //  Scaffold(...) class being returned by this widget.
      bottomNavigationBar: Builder(
        builder: (BuildContext context) {
          //  [height] variable for storing appBar height.
          double height = MediaQuery.of(context).padding.top + kToolbarHeight;

          return BottomAppBar(
            color: Colors.blue,
            child: Row(
              children: <Widget>[
                SizedBox(
                  //  Set height of the BottomAppBar(...) class variable using
                  //  SizedBox(...). Get height from [context] by first
                  //  extracting the immediate Scaffold(...), and then getting
                  //  the value for appBarMaxHeight. Need to take into account
                  //  appBarMaxHeight possibly being null.
                  height: height * appSettings.appBarHeightScaleFactor,
                ),
              ],
            ),
          );
        },
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          width: double.infinity,
          height: double.infinity,
        ),
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
                child: Container(
                  color: Colors.red,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Button(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
