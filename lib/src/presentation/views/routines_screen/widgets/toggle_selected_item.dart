import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/colors.dart';
import '../../../../core/utils/screen_config.dart';
import '../../../blocs/routines/routines_bloc.dart';

class ToggleSelectedItem extends StatefulWidget {
  final String whenOrThen;
  final List<String> items;
  final int selectedIndex;

  const ToggleSelectedItem(this.whenOrThen,{this.items = const [], this.selectedIndex = 0, Key? key})
      : super(key: key);

  @override
  State<ToggleSelectedItem> createState() => _ToggleSelectedItemState();
}

class _ToggleSelectedItemState extends State<ToggleSelectedItem> {
  List<bool> _selectedStates = [];
  List<Widget> itemList = [];
  int selectedIndex = 0;

  @override
  void didChangeDependencies() {
    selectedIndex = context.read<RoutinesBloc>().getWhenOrThenToggleButton(widget.whenOrThen);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutinesBloc, RoutinesState>(builder: (BuildContext context, state) {
      if (state is LoadToggleSelectedItemState) {
        if (itemList.isEmpty) {
          itemList = List<Widget>.generate(
              state.property.rang!.length, (value) => Text(state.property.rang![value].toString()));
          _selectedStates =
              List<bool>.generate(state.property.rang!.length, (i) => i == selectedIndex);
        }
        return SizedBox(
          width: SizeConfig.screenWidth,
          height: getTenPercentOfHeight(),
          child: ToggleButtons(
            onPressed: (int index) {
              context.read<RoutinesBloc>().setWhenOrThenToggleButton(index,widget.whenOrThen);
              setState(() {
                // The button that is tapped is set to true, and the others to false.
                for (int i = 0; i < _selectedStates.length; i++) {
                  _selectedStates[i] = i == index;
                }
              });
            },
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            selectedBorderColor: color_3,
            selectedColor: color_3,
            fillColor: color_2,
            color: color_5,
            textStyle: const TextStyle(color: color_5),
            constraints: const BoxConstraints(
              minHeight: 40.0,
              minWidth: 80.0,
            ),
            isSelected: _selectedStates,
            children: itemList,
          ),
        );
      } else {
        itemList.clear();
        return Container();
      }
    });
  }
}
