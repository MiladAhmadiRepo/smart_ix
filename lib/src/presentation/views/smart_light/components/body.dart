import 'package:flutter/material.dart';

import '../../../../config/colors.dart';
import '../../../../core/utils/constants.dart';
import '../../smart_tv/components/intensity_slider.dart';
import '../../smart_tv/components/mood_toggle_buttons.dart';

class Body extends StatefulWidget {
  Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool switchOnOff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(  top: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
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
                          Text(
                            'Color',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: 7),
                          InkWell(
                            onTap: /*model.showColorPanel*/ () {},
                            child: Image.asset('assets/images/color_wheel.png', height: 22),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/lamp.png',
                    height: 180,
                    width: 140,
                    fit: BoxFit.contain,
                  ),
                  switchOnOff
                      ? Image.asset(
                          // model.lightImage,
                          'assets/images/purple.png',
                          height: 190,
                          width: 140,
                          fit: BoxFit.contain,
                          alignment: Alignment.topCenter,
                        )
                      : SizedBox(height: 190, width: 140),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // MoodToggleButtons(toneGlowString ,[warmString,coldString,]),
                SizedBox(height: 20),
                Intensity( ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
