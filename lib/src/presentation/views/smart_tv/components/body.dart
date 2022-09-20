import 'package:flutter/material.dart';

import '../../../../config/colors.dart';
import '../../../../core/utils/constants.dart';
import 'intensity_slider.dart';
import 'mood_toggle_buttons.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool switchOnOff = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Image.asset(
              tvSvgPath,
              height: 450,
              width: 260,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 19, top: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.arrow_back_outlined)),
                        Stack(
                          children: [
                            Text(
                              smartTvString,
                              style: Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 45,
                                    fontFamily: "Poppins",
                                    color: color_17.withOpacity(0.5),
                                  ),
                            ),
                            Text(
                              smartTvString,
                              style: Theme.of(context).textTheme.headline1!.copyWith(
                                    fontFamily: "Lexend",
                                    fontSize: 50,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26),
                        Text(
                          powerString,
                          style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontFamily: "Lexend",
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 4),
                        Switch.adaptive(
                          inactiveThumbColor: color_18,
                          inactiveTrackColor: color_0,
                          activeColor: color_16,
                          activeTrackColor: color_16,
                          value: switchOnOff,
                          onChanged: (value) {
                            // model.tvSwitch(value);
                            switchOnOff = !switchOnOff;
                            setState(() {});
                          },
                        ),
                        SizedBox(height: 90),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MoodToggleButtons(modeString ,[tvShowString,moviesString,myListString]),
            SizedBox(height: 20),

            Intensity( ),
          ],
        ),
      ],
    );
  }
}
