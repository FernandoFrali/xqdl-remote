import 'package:flutter/material.dart';

void main() => runApp(const XQDLHome());

class XQDLHome extends StatelessWidget {
  const XQDLHome({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'XQDL Form';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}