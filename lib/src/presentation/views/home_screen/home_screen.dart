import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/home/home_bloc.dart';

import '../../../core/utils/screen_config.dart';
import '../../widgets/custom_bottom_nav_bar.dart';
import '../device_screen/devices_screen.dart';
import '../routines_screen/routine_screen.dart';
import 'components/home_body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home-screen';

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> ListOfPageView = [
    HomeBody() ,
    DevicesScreen(),
    RoutineScreen(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: buildPageView(context),
            bottomNavigationBar: getCustomBottomNavBar(context.read<HomeBloc>()),
          );
        });
  }

  Widget buildPageView(BuildContext context) {
    return PageView.builder(
      controller: context.read<HomeBloc>().pageController,
      onPageChanged: (index) {
        context.read<HomeBloc>().add(PageChanged(index));
      },
      itemCount: ListOfPageView.length,
      itemBuilder: (BuildContext context, int index) {
        return ListOfPageView[index];
      },
    );
  }
}
