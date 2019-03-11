import 'package:flutter/material.dart';

import 'package:wefood/widgets/form_button.dart';
import 'package:wefood/widgets/form_spacer.dart';

class HomeCreateSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        Text('Start your own survey'),
        FormButton(
          buttonText: 'Start your own',
          isPrimaryButton: true,
          callback: () {
            Navigator.pushNamed(context, '/create');
          },
        ),
      ],
    );
  }
}
