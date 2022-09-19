import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:smart_ix/src/domain/entities/routines/owner_routine.dart';


class OwnerTypeConverter extends TypeConverter<OwnerRoutine, String> {
  @override
  OwnerRoutine decode(String databaseValue) {
    Map<String, dynamic> mapData= Map<String, dynamic>.from(jsonDecode(databaseValue));
    return OwnerRoutine.fromJson(mapData);
  }

  @override
  String encode(OwnerRoutine owner) {
    return json.encode(owner.toJson());
  }
}
