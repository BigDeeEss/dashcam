
import 'package:flutter/material.dart';


import 'package:dashcam/home.dart';
import 'package:dashcam/newhome.dart';

class Settings extends StatelessWidget {
  FloatingActionButtonLocation fabLocation = FloatingActionButtonLocation.endDocked;
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
                  Navigator.popAndPushNamed(context, '/newhome');
                },
                child: Text('NewHome')
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        tooltip: 'Create',
      ),
      floatingActionButtonLocation: fabLocation,
    );
  }
}