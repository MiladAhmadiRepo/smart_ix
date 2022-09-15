
class Devices {
  const Devices({
    required String userId,
    required List<Device> devices  ,
    required List<dynamic> services  ,
  });
}

//------------------------------------------------------------------------------------

class Device   {
  const   Device({
    required String id,
    required String name,
    String manufactureName='',
    String deviceVersion='',
    bool activityState=false,
    List<Property> properties=const[],
  });

}

//------------------------------------------------------------------------------------

class Property   {
  Property({
    required String id,
    required String name,
    String typeOfValue='',
    String currentValue='',
    List<String> rang=const[],
    String minValue='',
    String maxValue='',
  });

}

//------------------------------------------------------------------------------------
