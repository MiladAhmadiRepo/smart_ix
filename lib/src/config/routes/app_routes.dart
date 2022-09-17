import 'package:flutter/material.dart';
import 'package:smart_ix/src/presentation/views/device_screen/devices_screen.dart';
import 'package:smart_ix/src/presentation/views/home_screen/home_screen.dart';
import 'package:smart_ix/src/presentation/views/routines_screen/add_routine_screen.dart';

import '../../presentation/views/routines_screen/routine_when_screen.dart';



class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(HomeScreen());
      case 'add_routine_screen':
        return _materialRoute(AddRoutineScreen());
      case 'routine_when_screen':
        return _materialRoute(RoutineWhenScreen());
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
