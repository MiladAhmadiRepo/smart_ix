import 'package:domus/config/size_config.dart';
import 'package:domus/view/smart_light_view_model.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final SmartLightViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left:  19),
                top:  7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left:  19),
                      top:  7),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height:  40),
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
                              'Living\nRoom',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height:  26),
                        ),
                        Text(
                          'Power',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(
                          height:  4),
                        ),
                        Switch.adaptive(
                          inactiveThumbColor: const Color(0xFFE4E4E4),
                          inactiveTrackColor: Colors.white,
                          activeColor: Colors.white,
                          activeTrackColor: const Color(0xFF464646),
                          value: model.isLightOff,
                          onChanged: (value) {
                            model.lightSwitch(value);
                          },
                        ),
                        SizedBox(
                          height:  20),
                        ),
                        Text(
                          'Color',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(
                          height:  7),
                        ),
                        InkWell(
                          onTap: model.showColorPanel,
                          child: Image.asset(
                            'assets/images/color_wheel.png',
                            height:  22),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height:  40),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/lamp.png',
                  height:  180),
                  width:  140),
                  fit: BoxFit.contain,
                ),

                ///todo: Position this image in correct manner
                model.isLightOff
                    ? Image.asset(
                        model.lightImage,
                        height:  190),
                        width:  140),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter,
                      )
                    : SizedBox(
                        height:  190),
                        width:  140),
                      ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal:  
              15,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tone Glow',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height:  9),
              ),
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
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: Colors.white),
                  children: <Widget>[
                    SizedBox(
                      width:  115),
                      child: const Text(
                        'Warm',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width:  115),
                      child: const Text(
                        'Cold',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  onPressed: (int index) {
                    model.onToggleTapped(index);
                  },
                  isSelected: model.isSelected,
                ),
              ),
              SizedBox(
                height:  20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Intensity',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    '${model.lightIntensity.toInt()}%',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(
                    trackHeight:  5),
                    thumbColor: const Color(0xFF464646),
                    activeTrackColor: const Color(0xFF464646),
                    inactiveTrackColor: Colors.white,
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 8)),
                child: Slider(
                  min: 0,
                  max: 100,
                  onChanged: (val) {
                    model.changeLightIntensity(val);
                  },
                  value: model.lightIntensity,
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
