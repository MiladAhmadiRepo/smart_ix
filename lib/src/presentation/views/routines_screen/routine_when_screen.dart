import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/config/colors.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/dropdown_search_devices.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/dropdown_search_properties.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/option_and_text_selected_item.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/option_selected_item.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/text_field_selected_item.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/toggle_selected_item.dart';
import '../../../core/constants.dart';
import '../../blocs/routines/routines_bloc.dart';

class RoutineWhenScreen extends StatefulWidget {
  const RoutineWhenScreen({Key? key}) : super(key: key);

  @override
  State<RoutineWhenScreen> createState() => _RoutineWhenScreenState();
}

class _RoutineWhenScreenState extends State<RoutineWhenScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc, RoutinesState>(builder: (BuildContext context, state) {
      if (state is RoutinesShowNothing) {
        return const Scaffold(
          body: Center(child: SizedBox(width: 50, height: 50, child: CircularProgressIndicator())),
        );
      } else {
        return Scaffold(
            appBar: AppBar(
              leading: TextButton(
                onPressed: () {
                  context.read<RoutinesBloc>().add(UpdateTheUiOfWhenSectionEvent());
                  Navigator.pop(context);
                },
                child: const Text(saveString),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    context.read<RoutinesBloc>().clearRoutineWhenData();
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
                      DropdownSearchDevices("when"),
                      DropdownSearchProperties("when"),
                      OptionAndTextSelectedItem("when"),
                      OptionSelectedItem("when"),
                      ToggleSelectedItem("when"),
                      TextFieldSelectedItem("when"),
                    ],
                  ),
                ),
              ),
            ));
      }
    });
  }
}
