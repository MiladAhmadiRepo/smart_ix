import 'package:flutter/material.dart';
import '../../../config/screen_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(

      ),
      // bottomNavigationBar: CustomBottomNavBar(model: model),
    );
  }
}
