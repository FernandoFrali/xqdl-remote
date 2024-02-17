import 'package:xqdl_app/widgets/server/xqdl_form.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: AddServer()));

class AddServer extends StatelessWidget {
  const AddServer({super.key});

  final String title = "XQDL - Remote Control (says 'ex-quidel')";

  @override
  Widget build(BuildContext context) {
    const String appTitle = "XQDL - Remote Control (says 'ex-quidel')";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.black,
        ),
        body: const SingleChildScrollView(
          child: XQDLForm(),
        ),
      ),
    );
  }
}
