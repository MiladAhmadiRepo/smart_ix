import 'package:flutter/material.dart';


class MoodToggleButtons extends StatelessWidget {
  const MoodToggleButtons({Key? key,}) : super(key: key);

  // final SmartTvViewModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mood',
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: 9),
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
              children: <Widget>[
                SizedBox(
                  width: 80,
                  child: const Text(
                    'TV Shows',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: const Text(
                    'Movies',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: const Text(
                    'My List',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
              onPressed: (int index) {
                // model.onToggleTapped(index, context);
              },
              isSelected: /*model.isSelected*/[false,true,false],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
