class Human {
  String _fullName;
  String _gender;
  String _address;
  int? _phoneNumber;
  int? _age;

  Human(
    this._fullName,
    this._gender,
    this._address,
    this._phoneNumber,
    this._age,
  );

  // Human(this._fullName, this._gender, this._address,
  // [this._phoneNumber, this._age]); // making phone number and age optional
  String get fullName => _fullName;
  String get gender => _gender;
  String get address => _address;
  int? get phoneNumber => _phoneNumber;
  int? get age => _age;

  set fullName(String value) => _fullName = value;
  set gender(String value) => _gender = value;
  set address(String value) => _address = value;
  set phoneNumber(int? value) => _phoneNumber = value;
  set age(int? value) => _age = value;

  @override
  String toString() {
    return 'Human{fullName: $_fullName, gender: $_gender, address: $_address, phoneNumber: $_phoneNumber, age: $_age}';
  }
}
