//number validation
import 'package:smart_ix/src/domain/entities/routines/routines.dart';

import 'constants.dart';

String? fieldValidation(String? value,bool isPassword){
  if (value != null && value.isEmpty) {
    return isPassword? pleaseEnterPasswordString:pleaseEnterUsernameString;
  }
  if (value != null && value.length < 3) {
    return mustBeMoreThanString;
  }
  return null;
}

String? numberValidation(String? number) {
  if (number == null || number.isEmpty) {
    return pleaseEnterNumberValueString;
  } else {
    return (int.tryParse(number) != null) ? pleaseEnterNumberValueString : null;
  }
}

// This function is called whenever the text field changes
List<Routines> runFilter (String enteredKeyword,  List<Routines> listOfData) {
  List<Routines> results = [];
  if (enteredKeyword.isEmpty) {
    // if the search field is empty or only contains white-space, we'll display all data
    results = listOfData;
  } else {
    results = listOfData
        .where((data) => data.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
        .toList();
    // we use the toLowerCase() method to make it case-insensitive
  }
  return results;
}
