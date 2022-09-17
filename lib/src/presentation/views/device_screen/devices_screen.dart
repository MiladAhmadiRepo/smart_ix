import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/colors.dart';

class DevicesScreen extends StatefulWidget {
  const DevicesScreen({Key? key}) : super(key: key);

  @override
  _DevicesScreenState createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<DevicesScreen> {
  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allData = [
    {"id": 1, "name": "Samsung Air Condition", "activity_state": "On"},
    {"id": 2, "name": "Xiaomi Lighting", "activity_state": "Off"},
    {"id": 3, "name": "LG Fan", "activity_state": "On"},
    {"id": 4, "name": "Sony Smart Tv", "activity_state": "Off"},

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
        title: const Text('Devices',style: TextStyle(color: color_5),),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons. add_circle_outline,
              color: color_5,
            ),
            onPressed: () {
              // do something
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
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.white,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: color_2),
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
                        'Activity State : ${_foundUsers[index]["activity_state"].toString()}  '),

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
