import 'package:flutter/material.dart';
import 'widgets/XQDLForm.dart';

void main() => runApp(const XQDLHome());

class XQDLHome extends StatelessWidget {
  const XQDLHome({super.key});

  final String title = "XQDL - Remote Control (says 'ex-quidel')";

  @override
  Widget build(BuildContext context) {
    const String appTitle = "XQDL - Remote Control (says 'ex-quidel')";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const AppTitle(),
          backgroundColor: Colors.black,
        ),
        body: const Center(
            child: XQDLForm(),
      ),
      ),
    );
  }
}

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => AppTitleState();
}

class AppTitleState extends State<AppTitle> {
  var isClicked = false;
  var titleIndex = 0;

  @override
  Widget build(BuildContext context) {
    switch (titleIndex) {
        case 1:
        titleIndex -= 1;
          return GestureDetector(
            child: const Text('XQDL - says "ex-quidel"', style: TextStyle(color: Colors.white)),
            onTap: () {
              setState(() {
                isClicked = true;
              });
            },
          );
      default:
        titleIndex += 1;
        return GestureDetector(
          child: const Text('XQDL - Remote Control', style: TextStyle(color: Colors.white)),
          onTap: () {
            setState(() {
              isClicked = true;
            });
          },
        );
    }
    }
}

