import 'package:flutter/material.dart';

import '../../../../config/colors.dart';
import '../../../../core/utils/constants.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 19, top: 7),
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
                              'Living\nRoom',
                              style: Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 45,
                                    color: const Color(0xFFBDBDBD).withOpacity(0.5),
                                  ),
                            ),
                            Text(
                              'Living\nRoom',
                              style: Theme.of(context).textTheme.headline1,
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

                ///todo: Position this image in correct manner
                /*model.isLightOff*/ true
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
              Text(
                'Tone Glow',
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
                  textStyle: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
                  children: <Widget>[
                    SizedBox(
                      width: 115,
                      child: const Text(
                        'Warm',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 11,
                      child: const Text(
                        'Cold',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  onPressed: (int index) {
                    // model.onToggleTapped(index);
                  },
                  isSelected: /*model.isSelected*/ [true, false],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Intensity',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    '${/*model.lightIntensity.toInt()*/ 20}%',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(
                    trackHeight: 5,
                    thumbColor: const Color(0xFF464646),
                    activeTrackColor: const Color(0xFF464646),
                    inactiveTrackColor: Colors.white,
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8)),
                child: Slider(
                  min: 0,
                  max: 100,
                  onChanged: (val) {
                    // model.changeLightIntensity(val);
                  },
                  value: /*model.lightIntensity*/ 20,
                ),
              ),
              Row(
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
            ],
          ),
        ),
      ],
    );
  }
}
