import 'package:flutter/material.dart';

class XQDLList extends StatefulWidget {
  const XQDLList({super.key});

  @override
  State<XQDLList> createState() => XQDLListState();
}

class XQDLListState extends State<XQDLList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.computer),
          title: Text('My Computer'),
          subtitle: Text('123.456.789.0'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
