//  Import dart packages.
import 'dart:io';

//  Import flutter packages.
import 'package:flutter/material.dart';
import 'package:dashcam/button.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('start sleep');
    // sleep(Duration(seconds: 2));
    // print('stop sleep');
    // Navigator.of(context).pushReplacement(createRoute('home'));
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(createRoute('settings'));
        },
      ),
    );
    // Center(
    //   child: Container(
    //     color: Colors.amber[600],
    //     width: 48.0,
    //     height: 48.0,
    //   ),
    // );
  }
}
