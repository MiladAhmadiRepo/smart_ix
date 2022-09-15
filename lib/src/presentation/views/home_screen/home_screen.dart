import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/size_config.dart';
import '../../widgets/custom_bottom_nav_bar.dart';
import '../menu_page/menu_screen.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: SizedBox(
          width: getThirtyPercentOfWidth(),
          child: const Menu()),
      body: Body(
        model: model,
      ),
      bottomNavigationBar: CustomBottomNavBar(model: model),
    );
  }
}
