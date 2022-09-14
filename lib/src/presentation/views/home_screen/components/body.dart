
import 'package:flutter/material.dart';
import 'package:smart_ix/src/presentation/views/home_screen/components/savings_container.dart';
import 'package:smart_ix/src/presentation/views/home_screen/components/weather_container.dart';

import '../../../blocs/home_screen_view_model.dart';
import '../../smart_ac/smart_ac.dart';
import '../../smart_fan/smart_fan.dart';
import '../../smart_light/smart_light.dart';
import '../../smart_speaker/smart_speaker.dart';
import '../../smart_tv/smart_tv.dart';
import 'add_device_widget.dart';
import 'dark_container.dart';
import 'music_widget.dart';

class Body extends StatelessWidget {
  final HomeScreenViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal:  7,
          vertical: 7,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFF2F2F2),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal:  4),
              child: Row(
                children: [
                  Text(
                    'Hi, Lex',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            Text(
              'Living Room',
              style: Theme.of(context).textTheme.headline3,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: WeatherContainer(model: model),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: SavingsContainer(model: model),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: DarkContainer(
                      itsOn: model.isLightOn,
                      switchButton: model.lightSwitch,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartLight.routeName);
                      },
                      iconAsset: 'assets/icons/svg/light.svg',
                      device: 'Lightening',
                      deviceCount: '4 lamps',
                      switchFav: model.lightFav,
                      isFav: model.isLightFav,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: DarkContainer(
                      itsOn: model.isACON,
                      switchButton: model.acSwitch,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartAC.routeName);
                      },
                      iconAsset: 'assets/icons/svg/ac.svg',
                      device: 'AC',
                      deviceCount: '4 devices',
                      switchFav: model.acFav,
                      isFav: model.isACFav,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: const MusicWidget(),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: DarkContainer(
                      itsOn: model.isSpeakerON,
                      switchButton: model.speakerSwitch,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartSpeaker.routeName);
                      },
                      iconAsset: 'assets/icons/svg/speaker.svg',
                      device: 'Speaker',
                      deviceCount: '1 device',
                      switchFav: model.speakerFav,
                      isFav: model.isSpeakerFav,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: DarkContainer(
                      itsOn: model.isFanON,
                      switchButton: model.fanSwitch,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartFan.routeName);
                      },
                      iconAsset: 'assets/icons/svg/fan.svg',
                      device: 'Fan',
                      deviceCount: '2 devices',
                      switchFav: model.fanFav,
                      isFav: model.isFanFav,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: const AddNewDevice(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SmartTV.routeName);
              },
              child: const Text(
                'Smart TV Screen',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
