import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_ix/src/presentation/views/smart_tv/smart_tv.dart';
import '../../../../config/colors.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/screen_config.dart';
import '../../../blocs/devices/devices_bloc.dart';
import '../../smart_ac/smart_ac.dart';
import '../../smart_fan/smart_fan.dart';
import '../../smart_light/smart_light.dart';
import 'add_device_widget.dart';
import 'blue_container.dart';

class HomeBody extends StatelessWidget {
  // final HomeScreenViewModel model;
  const HomeBody({Key? key}) : super(key: key);

  Widget services(
    BuildContext context,
  ) =>
      ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ServiceWidget(imagePath: weatherSvgPath, serviceName: weatherString),
          SizedBox(width: 10,),
          ServiceWidget(imagePath: newsSvgPath, serviceName: newsString),
          SizedBox(width: 10,),
          ServiceWidget(imagePath: musicSvgPath, serviceName: musicString),
        ],
      );

  List<Widget> devices(BuildContext context) => [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: DarkContainer(
                  itsOn: context.read<DevicesBloc>().light_activity_state,
                  switchButton: () {
                    context.read<DevicesBloc>().add(const LightSwitch());
                  },
                  onTap: () {
                    Navigator.of(context).pushNamed(SmartLight.routeName);
                  },
                  iconAsset: 'assets/icons/svg/light.svg',
                  device: 'Lightening',
                  companyName: context.read<DevicesBloc>().light_company_name,
                  switchFav: () {},
                  isFav: false,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: DarkContainer(
                  itsOn: context.read<DevicesBloc>().ar_activity_state,
                  switchButton: () {
                    context.read<DevicesBloc>().add(const ArSwitch());
                  },
                  onTap: () {
                    Navigator.of(context).pushNamed(SmartAC.routeName);
                  },
                  iconAsset: 'assets/icons/svg/ac.svg',
                  device: 'Samsung Air Condition',
                  companyName: context.read<DevicesBloc>().ar_company_name,
                  switchFav: () {},
                  isFav: false,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: DarkContainer(
                  itsOn: context.read<DevicesBloc>().smarttv_activity_state,
                  switchButton: () {
                    context.read<DevicesBloc>().add(const SmartTvSwitch());
                  },
                  onTap: () {
                    Navigator.of(context).pushNamed(smartTvScreen);
                  },
                  iconAsset: 'assets/icons/svg/smart_tv.svg',
                  device: 'SmartTv',
                  companyName: context.read<DevicesBloc>().smartv_company_name,
                  switchFav: () {},
                  isFav: false,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: DarkContainer(
                  itsOn: context.read<DevicesBloc>().fan_activity_state,
                  switchButton: () {
                    context.read<DevicesBloc>().add(const FanSwitch());
                  },
                  onTap: () {
                    Navigator.of(context).pushNamed(SmartFan.routeName);
                  },
                  iconAsset: 'assets/icons/svg/fan.svg',
                  device: 'Fan',
                  companyName: context.read<DevicesBloc>().fan_company_name,
                  switchFav: () {},
                  isFav: false,
                ),
              ),
            ),
          ],
        ),
      ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocBuilder<DevicesBloc, DevicesState>(
      builder: (BuildContext context, state) {
        if (state is DevicesDone) {
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
                        children: const [
                          Text(
                            'Hi, Milad',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Services',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    //load services
                    Expanded(
                        flex: 1,
                        child: services(
                          context,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Devices',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    //load devices
                    for (Widget row in devices(
                      context,
                    ))
                      Expanded(flex: 4, child: row),
                    //add new device
                    const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: AddNewDevice(),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Center(
              child: SizedBox(width: 50, height: 50, child: CircularProgressIndicator()));
        }
      },
    );
  }
}

class ServiceWidget extends StatelessWidget {
  final String imagePath;
  final String serviceName;

  const ServiceWidget({
    required this.imagePath,
    required this.serviceName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: true ? color_10 : color_12,
            borderRadius: BorderRadius.all(Radius.elliptical(45, 45)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              imagePath,
              color: true ? color_0 : color_13,
            ),
          ),
        ),
        Center(
          child: Text(serviceName,
              style: const TextStyle(color: true ? color_10 : color_14, fontSize: 12)),
        ),
      ],
    );
  }
}
