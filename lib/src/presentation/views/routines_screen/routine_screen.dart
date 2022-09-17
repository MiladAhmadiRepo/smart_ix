import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/add_routine_screen.dart';

import '../../../config/colors.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  _RoutineScreenState createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
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

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all data
      results = _allData;
    } else {
      results = _allData
          .where((data) =>
          data["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routine',style: TextStyle(color: color_5),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons. add_circle_outline,
              color: color_5,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('add_routine_screen');
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration:  const InputDecoration(
                labelStyle:TextStyle(color: color_5) ,
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search ,color: color_5,)),

            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.white,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),),
                    tileColor: color_1,
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white),
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
                    subtitle: Text(
                        '${_foundUsers[index]["age"].toString()} years old'),

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
    );
  }
}
