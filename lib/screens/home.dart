import 'package:flutter/material.dart';

import 'package:wefood/widgets/body_container.dart';
import 'package:wefood/widgets/form_divider.dart';

import 'package:wefood/screens/widgets/home_join_section.dart';
import 'package:wefood/screens/widgets/home_create_section.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WeFood',
          style: TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body:
      BodyContainer(
        child: Column(
          children: <Widget>[
          HomeJoinSection(),
          FormDivider(),
          HomeCreateSection(),
        ],)
      ),
    );
  }
}
