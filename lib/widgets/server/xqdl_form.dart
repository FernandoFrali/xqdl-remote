import 'package:flutter/material.dart';
import 'package:xqdl_app/main.dart';

class XQDLForm extends StatefulWidget {
  const XQDLForm({super.key});

  @override
  State<XQDLForm> createState() => XQDLFormState();
}

class XQDLFormState extends State<XQDLForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) => value == null || value.isEmpty
                  ? 'This field cannot be empty'
                  : null,
              decoration: const InputDecoration(
                labelText: 'Server name',
                border: OutlineInputBorder(),
                hintText: 'My Computer',
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value) => value == null || value.isEmpty
                  ? 'This field cannot be empty'
                  : null,
              decoration: const InputDecoration(
                labelText: 'Server IP Address',
                border: OutlineInputBorder(),
                hintText: '123.456.789.0',
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'TCP Port',
                border: OutlineInputBorder(),
                hintText: '9512',
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'UDP Port',
                border: OutlineInputBorder(),
                focusColor: Colors.black,
                hintText: '9512',
                filled: true,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const XQDLHome()),
                );
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              minimumSize: MaterialStateProperty.all<Size>(const Size(100, 50)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
            child:
                const Text('Add server', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
