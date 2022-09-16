import 'package:flutter/material.dart';

import 'intensity_slider.dart';
import 'mood_toggle_buttons.dart';

class Body extends StatelessWidget {
  // final SmartTvViewModel model;
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Padding(
            padding: EdgeInsets.only(top:  50),
            child: Image.asset(
              'assets/images/tv.png',
              height:  450,
              width:  260,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top:  7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:  19,top:  7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height:  40
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.arrow_back_outlined)),
                        Stack(
                          children: [
                            Text(
                              'Living\nRoom',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                fontSize: 45,
                                color: const Color(0xFFBDBDBD)
                                    .withOpacity(0.5),
                              ),
                            ),
                            Text(
                              'Smart\nTv',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height:  26
                        ),
                        Text(
                          'Power',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(
                          height:  4
                        ),
                        Switch.adaptive(
                          inactiveThumbColor: const Color(0xFFE4E4E4),
                          inactiveTrackColor: Colors.white,
                          activeColor: Colors.white,
                          activeTrackColor: const Color(0xFF464646),
                          value: /*model.isTvOff*/true,
                          onChanged: (value) {
                            // model.tvSwitch(value);
                          },
                        ),
                        SizedBox(
                          height:  90
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MoodToggleButtons(/*model: model*/),
            Intensity(/*model: model*/),
          ],
        ),
      ],
    );
  }
}
