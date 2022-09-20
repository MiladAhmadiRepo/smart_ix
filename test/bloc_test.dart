// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_ix/src/domain/entities/routines/routines.dart';
import 'package:smart_ix/src/presentation/blocs/routines/routines_bloc.dart';

import 'package:smart_ix/src/injector.dart';
import 'package:smart_ix/src/presentation/blocs/routines/routines_bloc.dart';

void main() {
  late RoutinesBloc routinesBloc;
  setUpAll(() async {
    await initializeDependencies();
    routinesBloc=RoutinesBloc(injector(),injector(),injector() ,injector());
  });
  group('show loading', ()
  {
    blocTest<RoutinesBloc, RoutinesState>(
      'emit loading to get routines',
      build: () => routinesBloc,
      act: (bloc) => bloc.add(GetRoutinesEvent("")),
      expect: () => [RoutinesLoadingState()],
    );
  });
  group('get routines from database', () {
    blocTest<RoutinesBloc, RoutinesState>(
      'description',
      build: () => routinesBloc,
      act: (bloc) => bloc.add(GetRoutinesEvent("")),
      skip: 1,
      expect: () => [],
    );
  });

}
