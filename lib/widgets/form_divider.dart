import 'package:flutter/material.dart';

import 'package:wefood/widgets/form_spacer.dart';

class FormDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      FormSpacer(),
      Divider(),
      FormSpacer(),
    ],);
  }
}