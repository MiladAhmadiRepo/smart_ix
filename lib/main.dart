import 'package:smart_ix/src/config/routes/app_routes.dart';
import 'package:smart_ix/src/config/themes/app_theme.dart';
import 'package:smart_ix/src/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/injector.dart';
import 'package:smart_ix/src/presentation/blocs/devices/devices_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/home/home_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/newses/news_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //init injector
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsesBloc>(
          // lazy: false,
          create: (_) => injector<NewsesBloc>()..add(  GetNewses()),
        ),
        BlocProvider<DevicesBloc>(
          lazy: false,
        create: (_) => injector<DevicesBloc>()..add(  GetDevices()),
        ),
        BlocProvider<HomeBloc>(
          lazy: false,
          create: (_) => injector<HomeBloc>() ,
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: kMaterialAppTitle,
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          theme: AppTheme.light),
    );
  }
}
