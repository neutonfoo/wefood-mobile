import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback callback;
  final bool isPrimaryButton;

  FormButton({
    @required this.buttonText,
    @required this.callback,
    this.isPrimaryButton = false,
  });

  double getHeight(BuildContext context) {
    if(this.isPrimaryButton) {
      return 100.0;
    }

    return 80.0;
  }

  Color getColor(BuildContext context) {
    if(this.isPrimaryButton) {
      return Theme.of(context).primaryColor;
    }

    return Theme.of(context).buttonColor;
  }

  Color getTextColor(BuildContext context) {
    if(this.isPrimaryButton) {
      return Colors.white;
    }

    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getHeight(context),
      child: RaisedButton(
        child: Text(buttonText),
        color: getColor(context),
        textColor: getTextColor(context),
        shape: StadiumBorder(),
        onPressed: callback,
      ),
    );
  }
}
