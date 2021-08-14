//  Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:dashcam/app_settings.dart' as appSettings;
import 'package:dashcam/button.dart';
import 'package:dashcam/button_specs.dart';

class BasePage extends StatelessWidget {
  const BasePage({required this.title, Key? key}) : super(key: key);

  /// [title] is the page title displayed on the appBar.
  final String title;

  @override
  Widget build(BuildContext context) {
    //  [height] variable for storing appBar height.
    double height = MediaQuery.of(context).padding.top + kToolbarHeight;

    //  [screenSize] variable for storing the height and width dimensions
    //  of the current screen.
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: SizedBox(
          height: height * appSettings.appBarHeightScaleFactor,
        ),
      ),
      body: Stack(
        //  Use a Container-Align-Column combination to locate the button list.
        children: [
          Align(
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
                    child: Button(
                      buttonSpec: home,
                      screenSize: screenSize,
                    ),
                  ),
                ),
                Padding(
                  padding: (appSettings.buttonAlignment.y < 0)
                      ? appSettings.buttonPaddingDown
                      : appSettings.buttonPaddingUp,
                  child: Container(
                    color: Colors.red,
                    child: Button(
                      buttonSpec: settings,
                      screenSize: screenSize,
                    ),
                  ),
                ),
                Padding(
                  padding: (appSettings.buttonAlignment.y < 0)
                      ? appSettings.buttonPaddingDown
                      : appSettings.buttonPaddingUp,
                  child: Container(
                    color: Colors.red,
                    child: Button(
                      buttonSpec: eject,
                      screenSize: screenSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
