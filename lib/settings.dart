
import 'package:flutter/material.dart';
import './home.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Settings')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed:(){
                  // Navigate to Settings() using route specified in DashCam()...
                  // Navigator.pushNamed(context, '/settings');
                  Navigator.popAndPushNamed(context, '/home');
                },
                child: Text('Home')
            ),
            ElevatedButton(
                onPressed:(){
                  // Navigate to Settings() using route specified in DashCam()...
                  // Navigator.pushNamed(context, '/files');
                  // Navigator.popAndPushNamed(context, '/settings');
                },
                child: Text('Settings')
            ),
          ],
        ),
      ),
    );
  }
}