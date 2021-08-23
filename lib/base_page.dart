//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/button.dart';
import 'package:dashcam/button_specs.dart';
import 'package:dashcam/app_settings.dart' as appSettings;

/// StatefulWidget implements a basic page layout design.
class BasePage extends StatefulWidget {
  const BasePage({
    required this.title,
    Key? key,
  }) : super(key: key);

  /// [title] is the page title displayed on the appBar.
  final String title;

  @override
  _BasePageState createState() => _BasePageState();
}

//  State class associated with BasePage widget.
class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Button ejectButton = Button(
        buttonSpec: eject,
        screenSize: screenSize,
      );
    Button homeButton = Button(
        buttonSpec: home,
        screenSize: screenSize,
      );
    Button settingsButton = Button(
        buttonSpec: settings,
        screenSize: screenSize,
      );
    print(MediaQuery.of(context).size);
    print(screenSize);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                  // height: (Scaffold.of(context).appBarMaxHeight ?? 0.0) *
                  //     appSettings.appBarHeightScaleFactor,
                  height: height * appSettings.appBarHeightScaleFactor,
                ),
              ],
            ),
          );
        },
      ),

      //  Use a Container-Align-Column combination to locate the button list.
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
                    height: homeButton.buttonSpec.size,
                    width: homeButton.buttonSpec.size,
                    child: homeButton,
                  ),
                ),
              ),
              Padding(
                padding: (appSettings.buttonAlignment.y < 0)
                    ? appSettings.buttonPaddingDown
                    : appSettings.buttonPaddingUp,
                child: Container(
                  color: Colors.red,
                  child: SizedBox(
                    height: settingsButton.buttonSpec.size,
                    width: settingsButton.buttonSpec.size,
                    child: settingsButton,
                  ),
                ),
              ),
              Padding(
                padding: (appSettings.buttonAlignment.y < 0)
                    ? appSettings.buttonPaddingDown
                    : appSettings.buttonPaddingUp,
                child: Container(
                  color: Colors.red,
                  child: SizedBox(
                    height: ejectButton.buttonSpec.size,
                    width: ejectButton.buttonSpec.size,
                    child: ejectButton,
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
