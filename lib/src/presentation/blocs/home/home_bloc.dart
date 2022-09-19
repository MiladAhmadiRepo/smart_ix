import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeReload(0)) {
    on<PageChanged>(_getPageChangedEventToState);
    on<BottomSheetTapped>(_getBottomSheetTappedEventToState);
  }
  ///-------------------------------------------------------------------------------------

  int bottomSheetAndPageViewIndex=0;
  PageController pageController = PageController(
    initialPage: 0,
  );
  ///-------------------------------------------------------------------------------------

  void _getPageChangedEventToState(PageChanged event, Emitter<HomeState> emit) {
    bottomSheetAndPageViewIndex = event.indexOfPageView;
    emit(HomeReload(bottomSheetAndPageViewIndex));
  }

  void _getBottomSheetTappedEventToState(BottomSheetTapped event, Emitter<HomeState> emit) {
    bottomSheetAndPageViewIndex = event.indexOfBottomSheet;
    pageController.animateToPage(bottomSheetAndPageViewIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
    emit(HomeReload(bottomSheetAndPageViewIndex));

  }
  ///-------------------------------------------------------------------------------------
  String? fieldValidation(String? value,bool isPassword){
    if (value != null && value.isEmpty) {
      return isPassword? pleaseEnterPasswordString:pleaseEnterUsernameString;
    }
    if (value != null && value.length < 3) {
      return mustBeMoreThanString;
    }
    return null;
  }

}
