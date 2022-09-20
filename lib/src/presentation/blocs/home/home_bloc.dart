import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeReloadState(0)) {
    on<PageChangedEvent>(_getPageChangedEventToState);
    on<BottomSheetTappedEvent>(_getBottomSheetTappedEventToState);
    on<SwitchAcEvent>(_getSwitchAcEventToState);
    on<SwitchSmartFanEvent>(_getSwitchSmartFanEventToState);
    on<SwitchSmartTvEvent>(_getSwitchSmartTvEventToState);
    on<SwitchSmartLightEvent>(_getSwitchSmartLightEventToState);
  }
  ///-------------------------------------------------------------------------------------

  int bottomSheetAndPageViewIndex=0;
  bool switchAc=false;
  bool switchSmartFan=false;
  bool switchSmartTv=false;
  bool switchSmartLight=false;
  PageController pageController = PageController(
    initialPage: 0,
  );
  ///-------------------------------------------------------------------------------------

  void _getPageChangedEventToState(PageChangedEvent event, Emitter<HomeState> emit) {
    bottomSheetAndPageViewIndex = event.indexOfPageView;
    emit(HomeReloadState(bottomSheetAndPageViewIndex));
  }

  void _getBottomSheetTappedEventToState(BottomSheetTappedEvent event, Emitter<HomeState> emit) {
    bottomSheetAndPageViewIndex = event.indexOfBottomSheet;
    pageController.animateToPage(bottomSheetAndPageViewIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
    emit(HomeReloadState(bottomSheetAndPageViewIndex));
  }

  void _getSwitchAcEventToState(SwitchAcEvent event, Emitter<HomeState> emit) {
    switchAc=!switchAc;
    emit(SwitchAcState(switchAc));
  }

  void _getSwitchSmartFanEventToState(SwitchSmartFanEvent event, Emitter<HomeState> emit) {
    switchSmartFan=!switchSmartFan;
    emit(SwitchSmartFanState(switchSmartFan));
  }

  void _getSwitchSmartTvEventToState(SwitchSmartTvEvent event, Emitter<HomeState> emit) {
    switchSmartTv=!switchSmartTv;
    emit(SwitchSmartTvState(switchSmartTv));
  }

  void _getSwitchSmartLightEventToState(SwitchSmartLightEvent event, Emitter<HomeState> emit) {
    switchSmartLight=!switchSmartLight;
    emit(SwitchSmartLightState(switchSmartLight));
  }
  ///-------------------------------------------------------------------------------------


}
