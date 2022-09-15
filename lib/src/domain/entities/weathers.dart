//------------------------------------------------------------------------------------

class Weathers {
  const Weathers({
    required String userId,
    required List<dynamic> devices  ,
    required List<Service> services  ,
  });
}
//------------------------------------------------------------------------------------

class Service {
  const Service({
    required String id,
    required String name,
    String companyName = '',
    String apiVersion = '',
    bool activityState = false,
    required Weather weather,
  });
}
//------------------------------------------------------------------------------------

class Weather {
  const Weather({
    required Location location,
    required Current current,
  });
}
//------------------------------------------------------------------------------------

class Current {
  const Current({
    required String lastUpdated,
    required int tempC,
    required int tempF,
    required int windDegree,
    String windDir = '',
  });
}
//------------------------------------------------------------------------------------

class Location {
  const Location({
    String name = '',
    String country = '',
  });
}
//------------------------------------------------------------------------------------
