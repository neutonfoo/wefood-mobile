import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BodyContainer extends StatelessWidget {
  final Widget child;

  BodyContainer({@required Widget this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Container(
        padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
        child: child,
      ),
    );
  }
}
