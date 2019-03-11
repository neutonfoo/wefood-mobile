import 'package:flutter/material.dart';

import 'package:wefood/widgets/body_container.dart';

import 'package:wefood/models/group.dart';

class Join extends StatefulWidget {
  final String groupCode;

  Join({@required this.groupCode});

  @override
  StatefulElement createElement() {
    return super.createElement();
  }

  @override
  State<StatefulWidget> createState() =>_JoinState();
}

class _JoinState extends State<Join> {

  Group group;

  @override
  void initState() {
    group = Group(groupCode: widget.groupCode);
    group.getGroup();
    super.initState();
  }

  @override
  void dispose() {
    group = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//    group = Group(groupCode: widget.groupCode);
//    group.getGroup();

    return Scaffold(
      appBar: AppBar(title: Text('Group ${widget.groupCode}')),
      body: BodyContainer(
        child: Text('Testing'),
      ),
    );
  }
}
