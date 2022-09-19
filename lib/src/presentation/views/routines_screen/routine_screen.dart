import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';
import 'package:smart_ix/src/presentation/blocs/routines/routines_bloc.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/add_routine_screen.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/widgets/Loading.dart';

import '../../../config/colors.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/utils.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  _RoutineScreenState createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  // This list holds the data for the list view
  // List<Routines> _foundData = [];

  @override
  initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    context.read<RoutinesBloc>().add(GetRoutines(""));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          routineString,
          style: TextStyle(color: color_5),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline,
              color: color_5,
            ),
            onPressed: () {
              context.read<RoutinesBloc>().clearRoutineData("whenthen");
              // context.read<RoutinesBloc>().add(GetRoutines());
              Navigator.of(context).pushNamed(addRoutineScreen);
            },
          )
        ],
      ),
      body: BlocBuilder<RoutinesBloc, RoutinesState>(
        builder: (BuildContext context, state) {
          if (state is RoutinesDoneState) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      // _foundData = runFilter(value, state.listOfRoutines);
                      context.read<RoutinesBloc>().add(GetRoutines(value));
                    },
                    decoration: const InputDecoration(
                        labelStyle: TextStyle(color: color_5),
                        labelText: 'Search',
                        suffixIcon: Icon(
                          Icons.search,
                          color: color_5,
                        )),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.listOfRoutines.length,
                      itemBuilder: (context, index) => Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        key: ValueKey(state.listOfRoutines[index].id.toString()),
                        color: Colors.white,
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        child: ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          tileColor: color_1,
                          leading: Container(
                            padding: const EdgeInsets.all(10),
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                            child: SvgPicture.asset(
                              airSvgPath,
                              color: color_8,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 10,
                          ),
                          title: Text(state.listOfRoutines[index].name),
                          subtitle: Text('${state.listOfRoutines[index].name.toString()}  '),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          else {
            return loadingWidget();
          }
        },
      ),
    );
  }
}
