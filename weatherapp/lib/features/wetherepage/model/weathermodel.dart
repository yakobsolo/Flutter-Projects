class Weather {
  final String cityName;
  final double tempreture;
  final String mainCondition;
  final String mainConditionDescription;

  Weather(
      {required this.cityName,
      required this.tempreture,
      required this.mainCondition,
      required this.mainConditionDescription});

  factory Weather.fromjson(Map<String, dynamic> json) {
    return Weather(
        cityName: json["name"],
        tempreture: json['main']['temp'],
        mainCondition: json['weather'][0]['main'],
        mainConditionDescription: json['weather'][0]['description']
);
  }
}
