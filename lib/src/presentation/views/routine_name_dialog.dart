import 'package:flutter/material.dart';

Future<void> routineNameDialog(BuildContext context) async {
  TextEditingController _textFieldController = TextEditingController();
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Enter Routine Name'),
          content: TextField(
            onChanged: (value) {

            },
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "Text Field in Dialog"),
          ),
          actions: <Widget>[
            TextButton(

              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);

              },
            ),
            TextButton(

              child: Text('OK'),
              onPressed: () {
                  Navigator.pop(context);
              },
            ),
          ],
        );
      });
}