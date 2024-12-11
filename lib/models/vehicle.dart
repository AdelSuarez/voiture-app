class Vehicle {
  String name;
  int kmHrs;
  String year;
  String type;
  String? group;

  Vehicle({
    required this.name,
    required this.kmHrs,
    required this.year,
    required this.type,
    this.group,
  });

  /// This method is used to convert a json object to a model object
  /// for help to manage the data and create a new instance of the model
  /// @param json
  /// @return Vehicle
  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      name: json['name'],
      kmHrs: json['kmHrs'],
      year: json['year'],
      type: json['type'],
      group: json['group'],
    );
  }
}
