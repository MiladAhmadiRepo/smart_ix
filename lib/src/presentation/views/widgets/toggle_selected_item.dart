import 'package:flutter/material.dart';

import '../../../config/colors.dart';


class ToggleSelectedItem extends StatefulWidget {
  final List<String> items;
  final int selectedIndex;

  const ToggleSelectedItem({this.items = const [], this.selectedIndex = 0, Key? key})
      : super(key: key);

  @override
  State<ToggleSelectedItem> createState() => _ToggleSelectedItemState();
}

class _ToggleSelectedItemState extends State<ToggleSelectedItem> {
  late final List<bool> _selectedStates;
  late List<Widget> itemList;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = widget.selectedIndex;
    _selectedStates = List<bool>.generate(widget.items.length, (i) => i == selectedIndex);
    itemList= List<Widget>.generate(widget.items.length, (value) => Text(value.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      onPressed: (int index) {
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
      children:  itemList,
    );
  }
}
