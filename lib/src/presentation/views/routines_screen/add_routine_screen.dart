import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/routine_when_screen.dart';

import '../../../config/colors.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/screen_config.dart';
import '../../blocs/routines/routines_bloc.dart';
import 'widgets/routine_name_dialog.dart';

class AddRoutineScreen extends StatefulWidget {
  const AddRoutineScreen({Key? key}) : super(key: key);

  @override
  _AddRoutineState createState() => _AddRoutineState();
}

class _AddRoutineState extends State<AddRoutineScreen> {
  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allData = [
    {"id": 1, "name": "Andy", "age": 29},
    {"id": 2, "name": "Aragon", "age": 40},
    {"id": 3, "name": "Bob", "age": 5},
    {"id": 4, "name": "Barbara", "age": 35},
    {"id": 5, "name": "Candy", "age": 21},
    {"id": 6, "name": "Colin", "age": 55},
    {"id": 7, "name": "Audra", "age": 30},
    {"id": 8, "name": "Banana", "age": 14},
    {"id": 9, "name": "Caversky", "age": 100},
    {"id": 10, "name": "Becky", "age": 32},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc,RoutinesState>(
      builder: (BuildContext context, state) {
       return Scaffold(
          appBar:  AppBar(
            title: const Center(child: Text(addRoutineString,style: TextStyle(color: color_5),)),
            leading:  TextButton(
              onPressed: () {
                // context.read<RoutinesBloc>().add(InsertRoutines(routines: routines))
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
                    Expanded(
                        flex: 1,
                        child: GestureDetector(
                          child: const Card(
                            elevation: 2,
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 10,
                              ),
                              title: Text(
                                enterRoutineNameString,
                                style: TextStyle(color: color_8),
                              ),
                              subtitle: Text(exCookString),
                            ),
                          ),
                          onTap: () {
                            routineNameDialog(context);
                          },
                        )),
                    Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RoutineWhenScreen()),
                            );
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
                        )),
                    const Expanded(
                        flex: 1,
                        child: Card(
                          elevation: 2,
                          child: ListTile(

                            title: Text(
                              'Add Action',
                              style: TextStyle(color: color_8),
                            ),
                            subtitle: Text('ex : Turn on The Light'),
                          ),
                        )),
                    Expanded(
                      flex: 5,
                      child: _foundUsers.isNotEmpty
                          ? Card(
                        elevation: 4,
                        margin: const EdgeInsets.all(5),
                        child: ListView.builder(
                          itemCount: _foundUsers.length,
                          itemBuilder: (context, index) => Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            key: ValueKey(_foundUsers[index]["id"]),
                            color: Colors.white,
                            elevation: 0,
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
                                  'assets/icons/svg/air.svg',
                                  color: color_8,
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 10,
                              ),
                              title: Text(_foundUsers[index]['name']),
                              subtitle: Text('${_foundUsers[index]["age"].toString()} years old'),
                            ),
                          ),
                        ),
                      )
                          : const Text(
                        'No results found',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
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
