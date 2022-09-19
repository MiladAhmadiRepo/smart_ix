import 'package:flutter/material.dart';


class Intensity extends StatelessWidget {
  const Intensity({Key? key,  })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Intensity',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                '${10}%',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
              trackHeight:  5,
              thumbColor: const Color(0xFF464646),
              activeTrackColor: const Color(0xFF464646),
              inactiveTrackColor: Colors.white,
              thumbShape:
              const RoundSliderThumbShape(enabledThumbRadius: 8)),
          child: Slider(
            min: 0,
            max: 100,
            onChanged: (val) {
            },
            value:10,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Off',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '100%',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
