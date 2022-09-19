import 'package:flutter/material.dart';
import 'package:smart_ix/src/config/colors.dart';

import '../../../../core/utils/constants.dart';

class Intensity extends StatefulWidget {
  const Intensity({
    Key? key,
  }) : super(key: key);

  @override
  State<Intensity> createState() => _IntensityState();
}

class _IntensityState extends State<Intensity> {
  double changeValue = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                intensityString,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontFamily: "Lexend",
                      fontSize: 30,
                    ),
              ),
              Text(
                '${changeValue.toInt()}%',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontFamily: "Lexend",
                      fontSize: 30,
                    ),
              ),
            ],
          ),
        ),
        SliderTheme(
          data: const SliderThemeData(
              trackHeight: 5,
              thumbColor: color_16,
              activeTrackColor: color_16,
              inactiveTrackColor: color_0,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8)),
          child: Slider(
            min: 0,
            max: 100,
            onChanged: (val) {
              setState(() {
                changeValue = val;
              });
            },
            value: changeValue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                offString,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                oneHundredString,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
