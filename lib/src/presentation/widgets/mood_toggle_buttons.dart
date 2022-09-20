import 'package:flutter/material.dart';
import 'package:smart_ix/src/config/colors.dart';

import '../../core/utils/constants.dart';


class MoodToggleButtons extends StatefulWidget {
  String mode="";
  List<String> listOfToggles=[];
    MoodToggleButtons(this.mode,this.listOfToggles,{Key? key,}) : super(key: key);

  @override
  State<MoodToggleButtons> createState() => _MoodToggleButtonsState();
}

class _MoodToggleButtonsState extends State<MoodToggleButtons> {
  List<bool> isSelectedList=[];
  @override
  void initState() {
    isSelectedList=widget.listOfToggles.map((e) => false).toList();
    isSelectedList[0]=true;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.mode,
            style: Theme.of(context).textTheme.headline2!.copyWith(
              fontFamily: "Lexend",
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 9),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color_0,
            ),
            child: ToggleButtons(
              selectedColor: color_0,
              fillColor: color_16,
              renderBorder: false,
              borderRadius: BorderRadius.circular(15),
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < isSelectedList.length; i++) {
                    isSelectedList[i] = i == index;
                  }
                });
              },
              isSelected:isSelectedList ,
              children: widget.listOfToggles.map((item) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  item,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              )).toList(),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
