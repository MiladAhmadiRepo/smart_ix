
class Properties {

  final String? id;
  final String? name;
  final String? typeOfValue;
  final String? expectedValue;
  final bool? lessThan;
  final bool? moreThan;
  final bool? equal;

	Properties(this.id,
		this.name,
		this.typeOfValue,
		this.expectedValue,
		this.lessThan,
		this.moreThan,
		this.equal);

	Properties.fromJson(Map<String, dynamic> map): 
		id = map['id'],
		name = map['name'],
		typeOfValue = map['type_of_value'],
		expectedValue = map['expected_value'],
		lessThan = map['less_than'],
		moreThan = map['more_than'],
		equal = map['equal'];

	Map<String, dynamic> toJson() {
		final _$data = Map<String, dynamic>();
		_$data['id'] = id;
		_$data['name'] = name;
		_$data['type_of_value'] = typeOfValue;
		_$data['expected_value'] = expectedValue;
		_$data['less_than'] = lessThan;
		_$data['more_than'] = moreThan;
		_$data['equal'] = equal;
		return _$data;
	}

	Properties copyWith({String? id,
		String? name,
		String? typeOfValue,
		String? expectedValue,
		bool? lessThan,
		bool? moreThan,
		bool? equal}) => 
	Properties(id ?? this.id,
		name ?? this.name,
		typeOfValue ?? this.typeOfValue,
		expectedValue ?? this.expectedValue,
		lessThan ?? this.lessThan,
		moreThan ?? this.moreThan,
		equal ?? this.equal);
}