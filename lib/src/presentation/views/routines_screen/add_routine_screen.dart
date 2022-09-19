import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/routine_when_screen.dart';

import '../../../config/colors.dart';
import '../../../core/utils/constants.dart';
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
  Routines? routine;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    routine = context.read<RoutinesBloc>().getRoutine();
    titleBar = routine == null ? addRoutineString : updateRoutineString;
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
                context.read<RoutinesBloc>().add(InsertRoutines());
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
          body: SingleChildScrollView(
            // reverse: true,
            child: SizedBox(
              width: double.infinity,
              height: SizeConfig.screenHeight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Flexible(
                      child: BlocBuilder<RoutinesBloc, RoutinesState>(
                          builder: (BuildContext context, state) {
                        return RoutineNameSection();
                      }),
                    ),
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
        Navigator.of(context).pushNamed(routineThenScreen);
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(
            'Add Action',
            style: TextStyle(color: color_8),
          ),
          subtitle: Text('ex : Turn on The Light'),
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routineWhenScreen);
      },
      child: Card(
        elevation: 2,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 10,
          ),
          title: Text(
            'When This Happens',
            style: TextStyle(color: color_8),
          ),
          subtitle: Text('ex : The Air Condition is Active'),
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
        routineNameDialog(context);
      },
    );
  }
}
