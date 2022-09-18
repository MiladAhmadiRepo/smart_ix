import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../../../blocs/routines/routines_bloc.dart';

Future<void> routineNameDialog(BuildContext context) async {
  TextEditingController _textFieldController = TextEditingController();
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(enterRoutineNameString),
          content: TextField(
            onChanged: (value) {},
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: nameOfRoutineString),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(cancelString),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text(submitString),
              onPressed: () {
                context
                    .read<RoutinesBloc>()
                    .add(SetRoutineName(routineName: _textFieldController.value.text.toString()));
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}
