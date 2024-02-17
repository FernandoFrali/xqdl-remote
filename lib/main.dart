import 'package:flutter/material.dart';
import 'package:xqdl_app/routes/add_server.dart';
import 'package:xqdl_app/widgets/server/xqdl_list.dart';

void main() => runApp(const MaterialApp(home: XQDLHome()));

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
        body: SingleChildScrollView(
          child: Column(children: [
            const Center(child: XQDLList()),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddServer()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              child: const Text('Add a new server',
                  style: TextStyle(color: Colors.white)),
            ),
          ]),
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
          child: const Text('XQDL - says "ex-quidel"',
              style: TextStyle(color: Colors.white)),
          onTap: () {
            setState(() {
              isClicked = true;
            });
          },
        );
      default:
        titleIndex += 1;
        return GestureDetector(
          child: const Text('XQDL - Remote Control',
              style: TextStyle(color: Colors.white)),
          onTap: () {
            setState(() {
              isClicked = true;
            });
          },
        );
    }
  }
}
