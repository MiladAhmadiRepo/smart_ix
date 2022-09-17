import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_ix/src/data/models/model_of_devices/owner_entity.dart';
import 'package:smart_ix/src/domain/entities/devices/owner.dart';
import '../../core/params/devices_request.dart';
import '../../core/resources/data_state.dart';
import '../../domain/entities/devices/devices.dart';
import '../../domain/entities/routines/routines.dart';
import '../../domain/repositories/devices_repository.dart';
import '../../domain/repositories/routines_repository.dart';
import '../datasources/local/app_database.dart';
import '../datasources/remote/devices_api_service.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../models/model_of_devices/devices_entity.dart';


class RoutinesRepositoryImpl implements RoutinesRepository {
  final AppDatabase _appDatabase;
  const RoutinesRepositoryImpl(  this._appDatabase);


  @override
  Future<List<Routines>> getRoutines() async {
    return _appDatabase.routinesDao.getAllRoutines( );
  }

  @override
  Future<void> insertRoutines(Routines routines) {
    return _appDatabase.routinesDao.insertRoutines( routines);
  }

  @override
  Future<void> removeRoutines(Routines routines) {
    return _appDatabase.routinesDao.deleteRoutines(routines );
  }

  @override
  Future<void> updateRoutines(Routines routines) {
    return _appDatabase.routinesDao.updateRoutines( routines);
  }
}
