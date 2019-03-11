import 'package:flutter/material.dart';

import 'package:wefood/widgets/form_spacer.dart';
import 'package:wefood/widgets/form_button.dart';

class HomeJoinSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeJoinSectionState();
}

class _HomeJoinSectionState extends State<HomeJoinSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController groupCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text('Join an existing group'),
          TextFormField(
            validator: (value) {
              if(value.length < 5) {
                return 'The group code has to be a 5 digit integer';
              }
            },
            controller: groupCodeController,
            keyboardType: TextInputType.number,
            maxLength: 5,
            decoration: InputDecoration(
              labelText: 'Group Code',
              hintText: 'Enter your group code here and click join',
            ),
          ),
          FormSpacer(),
          FormButton(
            buttonText: 'Join',
            isPrimaryButton: false,
            callback: () {
              if(_formKey.currentState.validate()) {
                Navigator.pushNamed(
                  context,
                  '/join',
                  arguments: {
                    'groupCode' : groupCodeController.text
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}