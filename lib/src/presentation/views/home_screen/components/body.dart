import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/colors.dart';
import '../../../../config/screen_config.dart';
import '../../smart_ac/smart_ac.dart';
import '../../smart_fan/smart_fan.dart';
import '../../smart_light/smart_light.dart';
import '../../smart_speaker/smart_speaker.dart';
import '../../smart_tv/smart_tv.dart';
import 'add_device_widget.dart';
import 'blue_container.dart';
import 'music_widget.dart';

class Body extends StatelessWidget {
  // final HomeScreenViewModel model;
  const Body({Key? key}) : super(key: key);

  Widget services(BuildContext context) => ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            height: 70.0,
            width: 70.0,
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: /*itsOn*/ true ? color_10 : color_12,
                    borderRadius: const BorderRadius.all(Radius.elliptical(45, 45)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'assets/icons/svg/weather.svg',
                      color: /*itsOn*/ true ?color_0  :  color_13,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Weather",
                    style:TextStyle(
                      color: /*itsOn*/ true ? color_10 : color_14,
                      fontSize: 12
                    )
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70.0,
            width: 70.0,
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: /*itsOn*/ true ? color_10 : color_12,
                    borderRadius: const BorderRadius.all(Radius.elliptical(45, 45)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'assets/icons/svg/news.svg',
                      color: /*itsOn*/ true ?color_0  :  color_13,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "News",
                    style:TextStyle(
                      color: /*itsOn*/ true ? color_10 : color_14,
                      fontSize: 12
                    )
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70.0,
            width: 70.0,
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: /*itsOn*/ true ? color_10 : color_12,
                    borderRadius: const BorderRadius.all(Radius.elliptical(45, 45)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'assets/icons/svg/music.svg',
                      color: /*itsOn*/ true ?color_0  :  color_13,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Music",
                    style:TextStyle(
                      color: /*itsOn*/ true ? color_10 : color_14,
                      fontSize: 12
                    )
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  List<Widget> devices(BuildContext context) => [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: DarkContainer(
                  itsOn: /*model.isLightOn*/ false,
                  switchButton: /*model.lightSwitch*/ () {},
                  onTap: () {
                    Navigator.of(context).pushNamed(SmartLight.routeName);
                  },
                  iconAsset: 'assets/icons/svg/light.svg',
                  device: 'Lightening',
                  deviceCount: '4 lamps',
                  switchFav: /*model.lightFav*/ () {},
                  isFav: /*model.isLightFav*/ false,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: DarkContainer(
                  itsOn: /*model.isACON*/ true,
                  switchButton: /*model.acSwitch*/ () {},
                  onTap: () {
                    Navigator.of(context).pushNamed(SmartAC.routeName);
                  },
                  iconAsset: 'assets/icons/svg/ac.svg',
                  device: 'AC',
                  deviceCount: '4 devices.json.josn',
                  switchFav: /*model.acFav*/ () {},
                  isFav: /*model.isACFav*/ false,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: DarkContainer(
                  itsOn: /*model.isSpeakerON*/ true,
                  switchButton: /*model.speakerSwitch*/ () {},
                  onTap: () {
                    Navigator.of(context).pushNamed(SmartSpeaker.routeName);
                  },
                  iconAsset: 'assets/icons/svg/speaker.svg',
                  device: 'Speaker',
                  deviceCount: '1 device',
                  switchFav: /*model.speakerFav*/ () {},
                  isFav: /*model.isSpeakerFav*/ false,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: DarkContainer(
                  itsOn: /*model.isFanON*/ false,
                  switchButton: /*model.fanSwitch*/ () {},
                  onTap: () {
                    Navigator.of(context).pushNamed(SmartFan.routeName);
                  },
                  iconAsset: 'assets/icons/svg/fan.svg',
                  device: 'Fan',
                  deviceCount: '2 devices.json.josn',
                  switchFav: /*model.fanFav*/ () {},
                  isFav: /*model.isFanFav*/ false,
                ),
              ),
            ),
          ],
        ),
      ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          height: SizeConfig.screenHeight,
          padding: const EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 7,
          ),
          decoration: const BoxDecoration(
            color: color_15,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    Text(
                      'Hi, Milad',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: Text(
                  'Services',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              //load services
              Expanded(
                  flex: 1,
                  child: services(  context)),
              Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: Text(
                  'Devices',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              //load devices
              for (Widget row in devices(context)) Expanded(flex: 4, child: row),
              //add new device
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: const AddNewDevice(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
