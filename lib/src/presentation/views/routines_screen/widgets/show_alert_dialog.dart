import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

showAlertDialog(BuildContext context, String title, String content) {
  Widget okButton = TextButton(
    child: const Text(okString),
    onPressed: () {
      Navigator.of(context).pop(); // dismiss dialog
    },
  );
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
