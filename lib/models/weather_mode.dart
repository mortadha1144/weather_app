class WeatherModel {
  final String date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherStateName;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    var jsonDay = json['forecast']['forecastday'][0]['day'];
    return WeatherModel(
      date: json['location']['localtime'],
      temp: jsonDay['avgtemp_c'],
      maxTemp:  jsonDay['maxtemp_c'],
      minTemp:jsonDay['mintemp_c'],
      weatherStateName: jsonDay['condition']['text'],
    );
  }
}
