import 'package:flutter/material.dart';
import 'package:smart_ix/src/presentation/views/device_screen/devices_screen.dart';
import 'package:smart_ix/src/presentation/views/home_screen/home_screen.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/add_routine_screen.dart';
import 'package:smart_ix/src/presentation/views/smart_tv/smart_tv.dart';

import '../../presentation/views/login_screen/login_screen.dart';
import '../../presentation/views/routines_screen/routine_then_screen.dart';
import '../../presentation/views/routines_screen/routine_when_screen.dart';



class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const LoginScreen());
      case '/home-screen':
        return _materialRoute(HomeScreen());
      case '/add_routine_screen':
        return _materialRoute(  AddRoutineScreen());
      case '/routine_when_screen':
        return _materialRoute(  RoutineWhenScreen());
      case '/routine_then_screen':
        return _materialRoute(  RoutineThenScreen());
      case '/smart-tv':
        return _materialRoute(  SmartTV());
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
