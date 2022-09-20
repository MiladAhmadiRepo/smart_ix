import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../domain/entities/devices/devices.dart';
import '../../../blocs/routines/routines_bloc.dart';

class DropdownSearchDevices extends StatelessWidget {
  final String whenOrThen;
  const DropdownSearchDevices(this.whenOrThen,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<Devices>(
      popupProps: const PopupProps.menu(
        showSearchBox: true,
      ),
      items: context.read<RoutinesBloc>().getAllDevicesAndServices(),
      itemAsString: (devices) {
        return devices.name!;
      },
      selectedItem: context.read<RoutinesBloc>().getWhenOrThenSelectedDevicesOrServices(whenOrThen),
      dropdownDecoratorProps: const DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          labelText: devicesOrServicesString,
        ),
      ),
      onChanged: (value) {
        context.read<RoutinesBloc>().add(LoadPropertiesEvent(value!,whenOrThen));
      },

    );
  }
}
