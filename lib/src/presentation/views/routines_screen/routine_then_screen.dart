import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/Loading.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/dropdown_search_devices.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/dropdown_search_properties.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/option_and_text_selected_item.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/option_selected_item.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/text_field_selected_item.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/toggle_selected_item.dart';

import '../../../config/colors.dart';
import '../../../core/utils/constants.dart';
import '../../blocs/routines/routines_bloc.dart';



class RoutineThenScreen extends StatefulWidget {
  const RoutineThenScreen({Key? key}) : super(key: key);

  @override
  State<RoutineThenScreen> createState() => _RoutineThenScreenState();
}

class _RoutineThenScreenState extends State<RoutineThenScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc, RoutinesState>(builder: (BuildContext context, state) {
      if (state is RoutinesShowNothing) {
        return loadingWidget();
      } else {
        return Scaffold(
            appBar: AppBar(
              leading: TextButton(
                onPressed: () {
                  context.read<RoutinesBloc>().submitThenSection();
                  Navigator.pop(context);
                },
                child: const Text(saveString),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(cancelString),
                ),
              ],
              backgroundColor: color_0,
            ),
            body: SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 50, left: 12, right: 12),
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 12, right: 12),
                  decoration: BoxDecoration(
                    color: color_0,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      DropdownSearchDevices("then"),
                      DropdownSearchProperties("then"),
                      OptionAndTextSelectedItem("then"),
                      OptionSelectedItem("then"),
                      ToggleSelectedItem("then"),
                      TextFieldSelectedItem("then"),
                    ],
                  ),
                ),
              ),
            ));
      }
    });
  }
}
