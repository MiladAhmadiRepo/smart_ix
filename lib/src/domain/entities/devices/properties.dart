
class Properties {

  final String? id;
  final String? name;
  final String? typeOfValue;
  final String? currentValue;
  final List<dynamic>? rang;
  final String? minValue;
  final String? maxValue;

	Properties(this.id,
		this.name,
		this.typeOfValue,
		this.currentValue,
		this.rang,
		this.minValue,
		this.maxValue);

	Properties.fromJson(Map<String, dynamic> map): 
		id = map['id'],
		name = map['name'],
		typeOfValue = map['type_of_value'],
		currentValue = map['current_value'],
		rang = map['rang'],
		minValue = map['min_value'],
		maxValue = map['max_value'];

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['id'] = id;
		_$data['name'] = name;
		_$data['type_of_value'] = typeOfValue;
		_$data['current_value'] = currentValue;
		_$data['rang'] = rang;
		_$data['min_value'] = minValue;
		_$data['max_value'] = maxValue;
		return _$data;
	}

	Properties copyWith({String? id,
		String? name,
		String? typeOfValue,
		String? currentValue,
		List<Object>? rang,
		String? minValue,
		String? maxValue}) => 
	Properties(id ?? this.id,
		name ?? this.name,
		typeOfValue ?? this.typeOfValue,
		currentValue ?? this.currentValue,
		rang ?? this.rang,
		minValue ?? this.minValue,
		maxValue ?? this.maxValue);
}