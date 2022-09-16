import 'package:flutter/material.dart';
import 'package:smart_ix/src/presentation/views/devices_screen.dart';
import 'package:smart_ix/src/presentation/views/home_screen/home_screen.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(DevicesScreen());
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}