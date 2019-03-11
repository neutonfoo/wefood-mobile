import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:wefood/screens/index.dart';

//void main() => runApp(WeFood());
void main() {
//  debugPaintSizeEnabled = true;
//  debugPaintBaselinesEnabled = true;
//  debugPaintPointersEnabled = true;

  runApp(WeFood());
}

class WeFood extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    '/create': (BuildContext context) => Create()
  };

  final ThemeData themeData = ThemeData(
    primarySwatch: Colors.deepOrange,
    textTheme: TextTheme(
      body1: TextStyle(fontSize: 20.0,),
      button: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    ),
  );

  Route<dynamic> _getRoute(RouteSettings settings) {

    final Map<String, dynamic> arguments = settings.arguments;

    if(settings.name == '/join') {

      String groupCode = arguments['groupCode'];

      return MaterialPageRoute<void>(
        builder: (BuildContext context) => Join(groupCode: groupCode)
      );
    }

    // The other paths we support are in the routes table.
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      onGenerateRoute: _getRoute,
      theme: themeData,
      initialRoute: '/',
    );
  }
}
