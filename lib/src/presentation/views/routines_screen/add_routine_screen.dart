import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/routine_when_screen.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/show_alert_dialog.dart';

import '../../../config/colors.dart';
import '../../../core/constants.dart';
import '../../../core/utils/screen_config.dart';
import '../../../domain/entities/routines/routines.dart';
import '../../blocs/routines/routines_bloc.dart';
import 'routine_name_dialog.dart';

class AddRoutineScreen extends StatefulWidget {
  const AddRoutineScreen({Key? key}) : super(key: key);

  @override
  _AddRoutineState createState() => _AddRoutineState();
}

class _AddRoutineState extends State<AddRoutineScreen> {
  String titleBar = "";
  String stateOfRoutine = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    stateOfRoutine = context.read<RoutinesBloc>().stateOfRoutine;
    titleBar = stateOfRoutine.contains("Insert") ? addRoutineString : updateRoutineString;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc, RoutinesState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(titleBar, style: const TextStyle(color: color_5)),
            ),
            leading: TextButton(
              onPressed: () {
                context.read<RoutinesBloc>().add(InsertOrUpdateRoutinesEvent());
                context.read<RoutinesBloc>().add(GetRoutinesEvent(""));
                Navigator.pop(context);
              },
              child: const Text(saveString),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.read<RoutinesBloc>().clearRoutineWhenData();
                  context.read<RoutinesBloc>().clearRoutineThenData();
                  context.read<RoutinesBloc>().add(GetRoutinesEvent(""));
                  Navigator.pop(context);
                },
                child: const Text(cancelString),
              ),
            ],
            backgroundColor: color_0,
          ),
          body: SingleChildScrollView(
            // reverse: true,
            child: SizedBox(
              width: double.infinity,
              height: SizeConfig.screenHeight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Flexible(child: RoutineNameSection()),
                    Flexible(child: RoutineWhenSection()),
                    Flexible(child: RoutineThenSection()),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class RoutineThenSection extends StatelessWidget {
  const RoutineThenSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<RoutinesBloc>().accessPermissionCheck()?
        Navigator.of(context).pushNamed(routineThenScreen):
        showAlertDialog(context,permissionString,doNotPermissionString);
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(
            context.read<RoutinesBloc>().getTheNameOfSelectedDeviceInThenSection(),
            style: const TextStyle(color: color_8),
          ),
          subtitle: Text(
            context.read<RoutinesBloc>().getTheNameOfSelectedPropertyInThenSection(),
          ),
        ),
      ),
    );
  }
}

class RoutineWhenSection extends StatelessWidget {
  const RoutineWhenSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        context.read<RoutinesBloc>().accessPermissionCheck()?
        Navigator.of(context).pushNamed(routineWhenScreen):
        showAlertDialog(context,permissionString,doNotPermissionString);
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 10,
          ),
          title: Text(
            context.read<RoutinesBloc>().getTheNameOfSelectedDeviceInWhenSection(),
            style: const TextStyle(color: color_8),
          ),
          subtitle: Text(
            context.read<RoutinesBloc>().getTheNameOfSelectedPropertyInWhenSection(),
          ),
        ),
      ),
    );
  }
}

class RoutineNameSection extends StatelessWidget {
  const RoutineNameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 2,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 10,
          ),
          title: Text(
            context.read<RoutinesBloc>().getRoutineName(),
            style: const TextStyle(color: color_8),
          ),
          subtitle: const Text(exCookString),
        ),
      ),
      onTap: () {
        context.read<RoutinesBloc>().accessPermissionCheck()?
        routineNameDialog(context):
        showAlertDialog(context,permissionString,doNotPermissionString);
      },
    );
  }
}
