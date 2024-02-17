
import 'package:flutter/material.dart';

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
          TextFormField(
            validator: (value) => value == null || value.isEmpty ? 'Este campo não pode ser vazio' : null
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}