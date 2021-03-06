

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'locator.dart';
import 'naviguation/routes.dart' as navRoute;


void main() {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  configure();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    runApp( MaterialApp(
      onGenerateRoute: navRoute.Router.generateRoute,
      initialRoute: navRoute.login,
    ));
  }
//Navigator.pushNamed(context, secondScreenRoute, arguments: 'Data from home');

}



