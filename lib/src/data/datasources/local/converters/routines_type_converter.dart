import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:smart_ix/src/domain/entities/routines/owner.dart';


class OwnerTypeConverter extends TypeConverter<Owner, String> {
  @override
  Owner decode(String databaseValue) {
    return Owner.fromJson(jsonDecode(databaseValue));
  }

  @override
  String encode(Owner owner) {
    return owner.toJson().toString();
  }
}
