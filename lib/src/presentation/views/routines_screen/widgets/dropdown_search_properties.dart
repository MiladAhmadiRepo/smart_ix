import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../domain/entities/devices/devices.dart';
import '../../../../domain/entities/devices/properties.dart';
import '../../../blocs/routines/routines_bloc.dart';

class DropdownSearchProperties extends StatelessWidget {
  final String whenOrThen;

  const DropdownSearchProperties(this.whenOrThen,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      if (context.read<RoutinesBloc>().getAllProperties().isNotEmpty) {
        return DropdownSearch<Properties>(
          popupProps: const PopupProps.menu(
            showSearchBox: true,
          ),
          items: context.read<RoutinesBloc>().getAllProperties(),
          itemAsString: (property) {
            return property.name!;
          },
          selectedItem: context.read<RoutinesBloc>().getWhenOrThenSelectedProperty(whenOrThen),
          dropdownDecoratorProps: const DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelText: propertyOrServiceString,
            ),
          ),
          onChanged: (value) {
            context.read<RoutinesBloc>().add(SelectPropertyEvent(value!,whenOrThen));
          },
        );
      } else {
        return Container();
      }
  }
}
