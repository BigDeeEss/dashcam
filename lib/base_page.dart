//  Import flutter packages.
import 'package:flutter/material.dart';

//  StatelessWidget which implements a basic page layout design.
class BasePage extends StatelessWidget {
  const BasePage({
    required this.title,
    Key? key,
  }) : super(key: key);

  /// [title] is the page title displayed on the appBar.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title)
      ),
    );
  }
}
