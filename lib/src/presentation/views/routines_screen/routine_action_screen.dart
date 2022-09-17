import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';



class RoutineActionScreen extends StatefulWidget {
  const RoutineActionScreen({Key? key}) : super(key: key);

  @override
  State<RoutineActionScreen> createState() => _RoutineActionScreenState();
}

class _RoutineActionScreenState extends State<RoutineActionScreen> {
  final List<Map<String, dynamic>> _roles = [
    {"name": "Super Admin", "desc": "Having full access rights", "role": 1},
    {
      "name": "Admin",
      "desc": "Having full access rights of a Organization",
      "role": 2
    },
    {
      "name": "Manager",
      "desc": "Having Magenent access rights of a Organization",
      "role": 3
    },
    {
      "name": "Technician",
      "desc": "Having Technician Support access rights",
      "role": 4
    },
    {
      "name": "Customer Support",
      "desc": "Having Customer Support access rights",
      "role": 5
    },
    {"name": "User", "desc": "Having End User access rights", "role": 6},
  ];
  List<String> st=["1","5","3","8"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading:  TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Save"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
        ],

        backgroundColor: Colors.white,
      ),
      body:  SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
              margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
              padding: EdgeInsets.only(top: 10,bottom: 10, left: 12, right: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Column(
                children: [

                  DropdownSearch<String>(


                    popupProps: PopupProps.menu(
                      showSearchBox: true,

                      showSelectedItems: true,
                      disabledItemFn: (String s) => s.startsWith('I'),
                    ),
                    items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Devices or Services",
                        // hintText: "Devices or Services",
                      ),
                    ),
                    onChanged: (value){
                      setState(() {
                        st=["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'];

                      });
                    },
                    // selectedItem: "Brazil",
                  ),
                  DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      showSelectedItems: true,
                      disabledItemFn: (String s) => s.startsWith('I'),
                    ),
                    items: st,
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Property Or Service",
                        // hintText: "country in menu mode",
                      ),
                    ),
                    onChanged: print,
                    selectedItem: "Brazil",
                  ),
                ],
              ),

          ),
        ),
      ),
    );
  }
}
