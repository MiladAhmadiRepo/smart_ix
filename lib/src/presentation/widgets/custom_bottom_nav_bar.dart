import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../blocs/home/home_bloc.dart';

BottomNavigationBar getCustomBottomNavBar (HomeBloc homeBloc)=> BottomNavigationBar(
      currentIndex: homeBloc.bottomSheetAndPageViewIndex,
      selectedItemColor: color_6,
      unselectedItemColor: color_5,
      elevation: 0,
      onTap: (int index){
        homeBloc.add(BottomSheetTapped(index));
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.home),
          // backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.broadcast_on_home),
          // backgroundColor: Colors.lightBlue,
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.task),
          // backgroundColor: Colors.lightBlue,
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.person_rounded),
          // backgroundColor: Colors.lightBlue,
        ),
      ],
    );


