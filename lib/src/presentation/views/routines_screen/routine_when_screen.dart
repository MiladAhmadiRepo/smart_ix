import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/config/colors.dart';

import '../../../core/utils/constants.dart';
import '../../../domain/entities/devices/devices.dart';
import '../../../domain/entities/devices/properties.dart';
import '../../blocs/routines/routines_bloc.dart';

class RoutineWhenScreen extends StatefulWidget {
  const RoutineWhenScreen({Key? key}) : super(key: key);

  @override
  State<RoutineWhenScreen> createState() => _RoutineWhenScreenState();
}

class _RoutineWhenScreenState extends State<RoutineWhenScreen> {
  List<String> st = ["1", "5", "3", "8"];

  @override
  void initState() {
    super.initState();
    context.read<RoutinesBloc>().add(const PrepareListOfDevicesAndServicesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc, RoutinesState>(builder: (BuildContext context, state) {
      if (state is PrepareListOfDevicesAndServicesState || state is LoadPropertiesState) {
        return Scaffold(
          appBar: AppBar(
            leading: TextButton(
              onPressed: () {
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
                    DropdownSearch<Devices>(
                      popupProps: const PopupProps.menu(
                        showSearchBox: true,
                        // showSelectedItems: true,
                        // disabledItemFn: (String s) => s.startsWith('I'),
                      ),
                      items: context.read<RoutinesBloc>().getDevicesAndServices(),
                      itemAsString: (devices){
                        return devices.name!;
                      },
                      selectedItem: context.read<RoutinesBloc>().getDevicesAndServices()[0],
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          labelText: devicesOrServicesString,
                          // hintText: "Devices or Services",
                        ),
                      ),
                      onChanged: (value) {
                        context.read<RoutinesBloc>().add(LoadPropertiesEvent(value!.id!));
                      },
                      // selectedItem: "Brazil",
                    ),
                    BlocBuilder<RoutinesBloc, RoutinesState>(
                        builder: (BuildContext context, state) {
                        if (state is LoadPropertiesState) {
                          return DropdownSearch<Properties>(
                            popupProps: const PopupProps.menu(
                              showSearchBox: true,
                              // showSelectedItems: true,
                              // disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: state.listOfProperties,
                            itemAsString: (property){
                              return property.name!;
                            },
                            dropdownDecoratorProps: const DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "Property Or Service",
                                // hintText: "country in menu mode",
                              ),
                            ),
                            onChanged: (value){

                            },
                            selectedItem: state.listOfProperties[0],
                          );
                        }else
                          {
                            return const SizedBox();
                          }
                    }),
                  ],
                ),
              ),
            ),
          ),
        );
      } else {
        return const Scaffold(
          body: Center(
              child: SizedBox(width: 50, height: 50, child: CircularProgressIndicator())),
        );
      }
    });
  }
}
