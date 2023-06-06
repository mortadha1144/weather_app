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
      date: json['location']['localtime'].toString().substring(10),
      temp: jsonDay['avgtemp_c'],
      maxTemp: jsonDay['maxtemp_c'],
      minTemp: jsonDay['mintemp_c'],
      weatherStateName: jsonDay['condition']['text'],
    );
  }

  @override
  String toString() {
    return 'temp = $temp minTemp = $minTemp date = ${date.toString()}';
  }

  // String getImage() {
  //   switch (weatherStateName) {
  //     case 'Clear':
  //     case 'Sunny':
  //     case 'artly Cloudy':
  //       return 'assets/images/clear.png';
  //     case 'Cloudy':
  //     case 'Overcast':
  //       return 'assets/images/cloudy.png';
  //     case 'Patchy rain nearby':
  //       return 'assets/images/rainy.png';
  //     case 'Blowing snow':
  //     case 'Blizzard':
  //       return 'assets/images/snow.png';
  //     case 'Clear':
  //       return 'assets/images/clear.png';
  //     default:
  //   }
  // }
}
