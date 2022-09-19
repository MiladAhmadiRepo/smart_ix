import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';


class MoodToggleButtons extends StatefulWidget {
  const MoodToggleButtons({Key? key,}) : super(key: key);

  @override
  State<MoodToggleButtons> createState() => _MoodToggleButtonsState();
}

class _MoodToggleButtonsState extends State<MoodToggleButtons> {
  List<bool> isSelectedList=[false,true,false];
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
            'Mood',
            style: Theme.of(context).textTheme.headline2!.copyWith(
              fontFamily: "Lexend",
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 9),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: ToggleButtons(
              selectedColor: Colors.white,
              fillColor: const Color(0xFF464646),
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
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    tvShowString,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    moviesString,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    myListString,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
