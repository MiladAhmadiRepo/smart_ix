import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:smart_ix/src/presentation/views/home_screen/components/home_body.dart';
import '../../../core/resources/data_state.dart';
import '../../views/device_screen/devices_screen.dart';
import '../../views/home_screen/home_screen.dart';
import '../../views/routines_screen/routine_screen.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeReload(0)) {
    on<PageChanged>(_getPageChangedEventToState);
    on<BottomSheetTapped>(_getBottomSheetTappedEventToState);
  }
  int bottomSheetAndPageViewIndex=0;
  // List<Widget> ListOfPageView = [
  //    HomeBody() ,
  //   DevicesScreen(),
  //   RoutineScreen(),
  //   Scaffold(),
  // ];

  PageController pageController = PageController(
    initialPage: 0,
  );

  void _getPageChangedEventToState(PageChanged event, Emitter<HomeState> emit) {
    bottomSheetAndPageViewIndex = event.indexOfPageView;
    emit(HomeReload(bottomSheetAndPageViewIndex));
  }

  void _getBottomSheetTappedEventToState(BottomSheetTapped event, Emitter<HomeState> emit) {
    bottomSheetAndPageViewIndex = event.indexOfBottomSheet;
    pageController.animateToPage(bottomSheetAndPageViewIndex,
        duration: Duration(milliseconds: 200), curve: Curves.ease);
    emit(HomeReload(bottomSheetAndPageViewIndex));

  }
}
